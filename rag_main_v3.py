import streamlit as st

from typing import List
from google.api_core.client_options import ClientOptions
from google.cloud import discoveryengine_v1 as discoveryengine

# TODO(developer): Uncomment these variables before running the sample.
project_id = "solen-demo-checkride-2"
location = "global"                    # Values: "global", "us", "eu"
preamble = dict()

engine_id = "checkride2-demo-checkup_1750122112747"
preamble["energetic"] = "너는 모빌(카쉐어링 서비스)의 차량 점검 안내를 담당하는 친절한 상담원이야. 주어진 데이터만을 가지고 순서대로 정확하고 에너지와 애교넘치게 해요체로 답변해줘."
preamble["calm"] = "너는 모빌(카쉐어링 서비스)의 차량 점검 안내를 담당하는 친절한 상담원이야. 주어진 데이터만을 가지고 순서대로 정확하고 차분하며 간결하게 합니다체로 답변해줘."


def search_sample(
    project_id: str,
    location: str,
    engine_id: str,
    search_query: str,
    preamble_query: str,
) -> List[discoveryengine.SearchResponse]:
    #  For more information, refer to:
    # https://cloud.google.com/generative-ai-app-builder/docs/locations#specify_a_multi-region_for_your_data_store
    client_options = (
        ClientOptions(api_endpoint=f"{location}-discoveryengine.googleapis.com")
        if location != "global"
        else None
    )

    # Create a client
    client = discoveryengine.SearchServiceClient(client_options=client_options)

    # The full resource name of the search app serving config
    serving_config = f"projects/{project_id}/locations/{location}/collections/default_collection/engines/{engine_id}/servingConfigs/default_config"

    # Optional - only supported for unstructured data: Configuration options for search.
    # Refer to the `ContentSearchSpec` reference for all supported fields:
    # https://cloud.google.com/python/docs/reference/discoveryengine/latest/google.cloud.discoveryengine_v1.types.SearchRequest.ContentSearchSpec
    content_search_spec = discoveryengine.SearchRequest.ContentSearchSpec(
        # For information about snippets, refer to:
        # https://cloud.google.com/generative-ai-app-builder/docs/snippets
        snippet_spec=discoveryengine.SearchRequest.ContentSearchSpec.SnippetSpec(
            return_snippet=True
        ),
                
        #extractive_content_spec=discoveryengine.SearchRequest.ContentSearchSpec.ExtractiveContentSpec(
        #        max_extractive_answer_count=1
        #),
        #For information about search summaries, refer to:
        #https://cloud.google.com/generative-ai-app-builder/docs/get-search-summaries
        summary_spec=discoveryengine.SearchRequest.ContentSearchSpec.SummarySpec(
            summary_result_count=3,
            include_citations=True,
            ignore_adversarial_query=True,
            ignore_non_summary_seeking_query=True,
            model_prompt_spec=discoveryengine.SearchRequest.ContentSearchSpec.SummarySpec.ModelPromptSpec(
                preamble=preamble_query
            ),
            model_spec=discoveryengine.SearchRequest.ContentSearchSpec.SummarySpec.ModelSpec(
                version="gemini-2.0-flash-001/answer_gen/v1",
            ),
        ),
    )

    # Refer to the `SearchRequest` reference for all supported fields:
    # https://cloud.google.com/python/docs/reference/discoveryengine/latest/google.cloud.discoveryengine_v1.types.SearchRequest
    request = discoveryengine.SearchRequest(
        serving_config=serving_config,
        query=search_query,
        page_size=10,
        content_search_spec=content_search_spec,
        query_expansion_spec=discoveryengine.SearchRequest.QueryExpansionSpec(
            condition=discoveryengine.SearchRequest.QueryExpansionSpec.Condition.AUTO,
        ),
        spell_correction_spec=discoveryengine.SearchRequest.SpellCorrectionSpec(
            mode=discoveryengine.SearchRequest.SpellCorrectionSpec.Mode.AUTO
        ),
    )

    response = client.search(request)
    print("------RESPONSE BEGIN------")
    print(response)
    print("------RESPONSE END-----")

    return response

#--------------------
# App title
st.set_page_config(page_title='모빌 - Google Cloud Generative AI demo', 
                    page_icon=':cloud:', 
                    menu_items=None)

# Replicate Credentials
with st.sidebar:
    #st.sidebar.image("https://corp.musinsa.com/images/OG.png", width=150)
    st.sidebar.image("./logo2.png", width=128)
    st.title('Car check-up')
    st.write('Powered by Google Vertex AI Agent Builder')

st.header("Mobil 차량점검 안내 입니다.", divider="blue")

display_summary = True
# st.sidebar.header("Generative Summary")
# summary_radio = st.sidebar.radio("", ["on","off"], horizontal=False, label_visibility="collapsed")
# if (summary_radio == "off"):
    # display_summary = False

st.sidebar.header("Preamble prompt")
preamble_option = st.sidebar.selectbox(
    "",
    ('energetic', 'calm'), label_visibility="collapsed")

preamble_selected = preamble[preamble_option]

# Store LLM generated responses
if "messages" not in st.session_state.keys():
    st.session_state.messages = [{"role": "assistant", "content": "차량 점검을 시작하고 싶으신가요?"}]

# Display or clear chat messages
for message in st.session_state.messages:
    with st.chat_message(message["role"]):
        st.write(message["content"])

def clear_chat_history():
    st.session_state.messages = [{"role": "assistant", "content": "차량 점검을 시작하고 싶으신가요?"}]

st.sidebar.button('Clear Search Results', on_click=clear_chat_history)

def generate_output(response, display_summary):
    import re
    ans = ""
    #default_link = "https://www.musinsa.com/app/cs/faq/004"
    default_link = "https://www.socar.kr/cs"
    summary = response.summary.summary_with_metadata.summary.replace("[","**").replace("]","**")
    if not display_summary:
        summary = ""

    # Musinsa work
    #for ref in (response.summary.summary_with_metadata.references):
    #    ans = ans + f"\n > - [{ref.title}]({default_link})"

    # 오늘의집
    # reference : https://cloud.google.com/python/docs/reference/discoveryengine/latest/google.cloud.discoveryengine_v1.types.SearchResponse
    for ref in (response.summary.summary_with_metadata.references):
        for doc in (response.results):
            if (ref.document == doc.document.name):
                doc_data = dict(doc.document.struct_data)
                ans = ans + f'\n > - [{doc_data["question"]}]({doc_data["source_url"]})'

    if (ans != "") and (display_summary):
        ans = "\n\n > 참고 차량점검 순서 자료 목록 : " + ans
    
    return  re.sub(r"\[.*?\]", "", summary) + ans

def command_text(prompt, orignal_text, temp=0.4, tk=40, tp=1):
    from vertexai.generative_models import GenerativeModel, Part, HarmCategory, HarmBlockThreshold
    def get_model():
        return GenerativeModel("gemini-2.0-flash")
    #print(input)
    response = get_model().generate_content(
        [prompt + orignal_text],
        generation_config={
            "max_output_tokens": 2048,
            "temperature": temp,
            "top_k": tk,
            "top_p": tp
            #"temperature": 0.2, 
            #"top_k": 10,
            #"top_p": 0.6
        },
        safety_settings={
            HarmCategory.HARM_CATEGORY_UNSPECIFIED: HarmBlockThreshold.BLOCK_NONE,
            HarmCategory.HARM_CATEGORY_HATE_SPEECH: HarmBlockThreshold.BLOCK_NONE,
            HarmCategory.HARM_CATEGORY_DANGEROUS_CONTENT: HarmBlockThreshold.BLOCK_NONE,
            HarmCategory.HARM_CATEGORY_HARASSMENT: HarmBlockThreshold.BLOCK_NONE,
            HarmCategory.HARM_CATEGORY_SEXUALLY_EXPLICIT: HarmBlockThreshold.BLOCK_NONE,
        },
        stream=False
    )
    return response.text

def get_translation(text):
    return command_text("Translate Korean into English. ", text)

def button_click(ph):
    translated_output = get_translation(output)
    with ph:
        with st.spinner("Translating..."):
            st.empty()
            st.markdown(translated_output, unsafe_allow_html=True)

# User-provided prompt
if prompt := st.chat_input():
    st.session_state.messages.append({"role": "user", "content": prompt})
    with st.chat_message("user"):
        st.write(prompt)

# Generate a new response if last message is not from assistant
if st.session_state.messages[-1]["role"] != "assistant":
    msg = st.chat_message("assistant")
    with msg:
        with st.spinner("Searching..."):
            response = search_sample(project_id, location, engine_id, prompt, preamble_selected)
            #response = answer_query_sample(project_id, location, engine_id, prompt)
            output = generate_output(response, display_summary)
            placeholder = st.empty()
            placeholder.markdown(output, unsafe_allow_html=True)
        #with st.spinner("Translating..."):
        #    translated_output = get_translation(output)
        #    st.markdown(translated_output, unsafe_allow_html=True)

            
                
    message = {"role": "assistant", "content": output}
    st.session_state.messages.append(message)
    st.link_button("국토교통부를 통해 전달드리는 차량 점검 리스트", "www.korea.kr", icon="🔗")
    

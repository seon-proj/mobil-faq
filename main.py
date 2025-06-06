from google.protobuf.json_format import MessageToDict
from google.protobuf.json_format import MessageToDict # To convert Struct to dict
from streamlit_lottie import st_lottie

PROJECT_ID = "solen-demo-checkride-2"
REGION = "us-central1"
BUCKET = "faq_checkride_2_html"
BUCKET_URI = f"gs://faq_checkride_2_html"

project_id = "solen-demo-checkride-2"
location = "global"
engine_id = "faq-checkride-2-data-store_1748841765883" 
# The number of dimensions for the textembedding-gecko@003 is 768
# If other embedder is used, the dimensions would probably need to change.
DIMENSIONS = 768

# Index Constants
DISPLAY_NAME = "<my_matching_engine_index_id>"
DEPLOYED_INDEX_ID = "<my_matching_engine_endpoint_id>"
import streamlit as st
st.set_page_config(page_title="MOBIL의 AI상담사 모빌러 입니다", page_icon="☎️")

# from langchain.llms import 
# # from langchain.prompts import PromptTemplate
# from langchain.chains import LLMChain
from langchain_google_genai import (
    ChatGoogleGenerativeAI,
    HarmBlockThreshold,
    HarmCategory,
) 


llm = ChatGoogleGenerativeAI(
    model="gemini-2.5-flash-preview-05-20",
    safety_settings={
        HarmCategory.HARM_CATEGORY_DANGEROUS_CONTENT: HarmBlockThreshold.BLOCK_NONE,
    },
    temperature=0,
    max_tokens=None,
    timeout=None,
    max_retries=2,
    # other params...
)
# 세이프티 세팅

from langchain_core.prompts import ChatPromptTemplate

prompt = ChatPromptTemplate.from_messages(
    [
        (
            "system",
            "You are a helpful and kind assistant that responses in only korean about faq to customers of car sharing service which name is 'Mobili'",
        ),
        ("human", "나는 모빌리의 서비스 정책에 대해서 궁금해서 물어보고 싶어."),
    ]
)

# st.title("Mobili FAQ")
# st.title("안녕하세요 Mobili의 AI상담사입니다📞 모빌리에 어떤 점이 궁금하신가요?")
# question_input = st.text_input("")

# print(question_input)
# chain = prompt | llm
# ai_msg = chain.invoke(
#     {
#         "input": {question_input},
#     }
# )

# if ai_msg.content:
#     st.write(ai_msg.content)

# ai_msg = ""

# from google.cloud import aiplatform
# from langchain_google_vertexai import VertexAIEmbeddings

# embedding_model = VertexAIEmbeddings(model_name="text-embedding-005")

# # NOTE : This operation can take upto 30 seconds
# my_index = aiplatform.MatchingEngineIndex.create_tree_ah_index(
#     display_name=DISPLAY_NAME,
#     dimensions=DIMENSIONS,
#     approximate_neighbors_count=150,
#     distance_measure_type="DOT_PRODUCT_DISTANCE",
#     index_update_method="STREAM_UPDATE",  # allowed values BATCH_UPDATE , STREAM_UPDATE
# )

# # Create an endpoint
# my_index_endpoint = aiplatform.MatchingEngineIndexEndpoint.create(
#     display_name=f"{DISPLAY_NAME}-endpoint", public_endpoint_enabled=True
# )

# # NOTE : This operation can take upto 20 minutes
# my_index_endpoint = my_index_endpoint.deploy_index(
#     index=my_index, deployed_index_id=DEPLOYED_INDEX_ID
# )

# my_index_endpoint.deployed_indexes



# Here's the code to setup your session variables
# Uncomment this block when instructed
#

# if "chat" not in st.session_state:
#   st.session_state.chat = start_chat_session()
# else:
#   chat = st.session_state.chat

# if "history" not in st.session_state:
#   st.session_state.history = st.session_state.chat.history
lottie_url = "https://lottie.host/832d3fa4-4c61-4362-9482-a065e8c06cd4/zY3vLCFT8N.json"



from typing import List

from google.api_core.client_options import ClientOptions
from google.cloud import discoveryengine_v1 as discoveryengine
from typing import List
# import ast # This import appears to be unused


def search_sample(
    project_id: str,
    location: str,
    data_store_id: str,
    search_query: str,
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

    # The full resource name of the search engine serving config
    # e.g. projects/{project_id}/locations/{location}/dataStores/{data_store_id}/servingConfigs/{serving_config_id}
    serving_config = client.serving_config_path(
        project=project_id,
        location=location,
        data_store=data_store_id,
        serving_config="default_config",
    )

    # Refer to the `SearchRequest` reference for all supported fields:
    # https://cloud.google.com/python/docs/reference/discoveryengine/latest/google.cloud.discoveryengine_v1.types.SearchRequest
    request = discoveryengine.SearchRequest(
        serving_config=serving_config,
        query=search_query,
        page_size=1,
        query_expansion_spec=discoveryengine.SearchRequest.QueryExpansionSpec(
            condition=discoveryengine.SearchRequest.QueryExpansionSpec.Condition.AUTO,
        ),
        spell_correction_spec=discoveryengine.SearchRequest.SpellCorrectionSpec(
            mode=discoveryengine.SearchRequest.SpellCorrectionSpec.Mode.AUTO
        ),
    )

    response = client.search(request)
    return response.results

#
# End template code to use Discovery Engine API to call the Search app
#


st_lottie(lottie_url, key="user")

st.title("모빌, 당신의 모든 이동을 스마트하게 🚖")



query = st.text_input("무엇이 궁금하신가요?", value="")
    
if query:
    with st.spinner("모빌러가 답변을 찾고 있습니다..."):
        st.write(f"'{query}'...처리중... ")
        results = search_sample(project_id, location, engine_id, query)

    for result in results:
        # Print the full result object for debugging (optional)
        # print(result)
        
        # Display the link (acting as the URI)
       
        # If you want to display the extractive answers, you can do so like this:
        if "extractive_answers" in result.document.derived_struct_data:
        # This checks for the "extractive_answers" key in 'derived_struct_data'.
        # In your JSON, this key exists.
            st.subheader("궁금하신 내용을 알려드려요 ✨")
            # Streamlit will display a subheader "Extractive Answers".
            
            # result.document.derived_struct_data["extractive_answers"] is a Value object.
            # Its 'list_value' field contains the list of answers.
            extractive_answers_value_proto = result.document.derived_struct_data["extractive_answers"]

            # Iterate through the 'values' in the list_value. Each 'value' is a Value object
            # which in turn should have a 'struct_value' for the actual answer data.            
            for answer_item_value_proto in extractive_answers_value_proto:
                # Get the Struct message from the Value message wrapper
                # Now, access the "content" field from this answer_struct_proto
                if "content" in answer_item_value_proto:
                    content_string = answer_item_value_proto["content"]
                    # print(content_string)
                    content_string=content_string.replace("<b>", " ")
                    content_string=content_string.replace("</b>", " ")
                    st.markdown(content_string)

                # else: # Optional: handle if "content" is missing in an answer struct
                #     st.write("Content not found in this answer.")

        st.subheader("자세한 정보를 알고 싶으신가요? 🔗")
        if "link" in result.document.derived_struct_data:
            st.write(result.document.derived_struct_data["link"])

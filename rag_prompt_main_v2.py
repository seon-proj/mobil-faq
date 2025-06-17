
from vertexai import rag
import vertexai
from vertexai.generative_models import GenerativeModel, Tool
import streamlit as st
from streamlit_lottie import st_lottie
from typing import Union, ClassVar
import typing
# imagen code
import IPython
import IPython.display
from PIL import Image as PIL_Image
from PIL import ImageOps as PIL_ImageOps

# TODO(developer): Update and un-comment below lines
PROJECT_ID = "solen-demo-checkride-2"
LOCATION = "us-central1"
ENGINE_ID = "faq-checkride-v2-app_1749427823307"
vertex_ai_search_engine_name = "projects/{PROJECT_ID}/locations/{LOCATION}/collections/default_collection/engines/{ENGINE_ID}"
display_name = "test_corpus"
description = "Corpus Description"
cloud_storage_id = "faq_checkride_2_html"


def display_image(
    image,
    max_width: int = 600,
    max_height: int = 350,
) -> None:
    pil_image = typing.cast(PIL_Image.Image, image._pil_image)
    if pil_image.mode != "RGB":
        # RGB is supported by all Jupyter environments (e.g. RGBA is not yet)
        pil_image = pil_image.convert("RGB")
    image_width, image_height = pil_image.size
    if max_width < image_width or max_height < image_height:
        # Resize to display a smaller notebook image
        pil_image = PIL_ImageOps.contain(pil_image, (max_width, max_height))
    # IPython.display.display(pil_image)
    st.image(pil_image)


from vertexai.preview.vision_models import ImageGenerationModel

vertexai.init(project="solen-demo-checkride-2", location="us-central1")

generation_model = ImageGenerationModel.from_pretrained("imagen-4.0-generate-preview-05-20")



lottie_url = "https://lottie.host/832d3fa4-4c61-4362-9482-a065e8c06cd4/zY3vLCFT8N.json"

st.set_page_config(page_title="MOBIL의 AI상담사 모빌러 입니다", page_icon="☎️")
st_lottie(lottie_url, key="user")


with st.sidebar:
    "[Mobil 렌트 이용하러 가기](https://socar.kr)"
    "[Mobil FAQ 센터 이동하기](https://www.socar.kr/cs)"
st.title("모빌, 당신의 모든 이동을 스마트하게 🚗")
st.caption("😀 안녕하세요 모빌의 AI 상담사 모빌러입니다")


# question = st.text_input("무엇이 궁금하신가요?", value="")   
question = st.chat_input()




# Initialize Vertex AI API once per session
vertexai.init(project=PROJECT_ID, location="us-central1")

# Configure Search
vertex_ai_search_config = rag.VertexAiSearchConfig(
    serving_config=f"{vertex_ai_search_engine_name}/servingConfigs/default_search",
)

# corpus = rag.create_corpus(
#     display_name=display_name,
#     description=description,
#     vertex_ai_search_config=vertex_ai_search_config,
# )

corpus_name="projects/solen-demo-checkride-2/locations/us-central1/ragCorpora/5685794529555251200"

# Example response:
# RagCorpus(name='projects/1234567890/locations/us-central1/ragCorpora/1234567890',
# display_name='test_corpus', description='Corpus Description'.
# ...

# Initialize Vertex AI API once per session
# response = rag.retrieval_query(
#     rag_resources=[
#         rag.RagResource(
#             rag_corpus=corpus_name,
#             # Optional: supply IDs from `rag.list_files()`.
#             # rag_file_ids=["rag-file-1", "rag-file-2", ...],
#         )
#     ],
#     text="Hello World!",
#     rag_retrieval_config=rag.RagRetrievalConfig(
#         top_k=10,
#         filter=rag.utils.resources.Filter(vector_distance_threshold=0.5),
#     ),
# )
# print(response)
# Example response:
# contexts {
#   contexts {
#     source_uri: "gs://your-bucket-name/file.txt"
#     text: "....
#   ....

rag_retrieval_tool = Tool.from_retrieval(
    retrieval=rag.Retrieval(
        source=rag.VertexRagStore(
            rag_resources=[
                rag.RagResource(
                    rag_corpus=corpus_name,
                    # Optional: supply IDs from `rag.list_files()`.
                    # rag_file_ids=["rag-file-1", "rag-file-2", ...],
                )
            ],
            rag_retrieval_config=rag.RagRetrievalConfig(
                top_k=2,
                filter=rag.utils.resources.Filter(vector_distance_threshold=0.5),
            ),
        ),
    )
)

rag_model = GenerativeModel(
    model_name="gemini-2.0-flash-001", tools=[rag_retrieval_tool]
)

if "messages" not in st.session_state:
    st.session_state["messages"] = [{"role": "assistant", "content": "무엇이 궁금하신가요?"}]

for msg in st.session_state.messages:
    st.chat_message(msg["role"]).write(msg["content"])
    
if question:
    with st.spinner("모빌러가 답변을 찾고 있습니다..."):
        st.session_state.messages.append({"role": "user", "content": question})
        st.chat_message("user").write(question)        
        st.write(f"'{question}'...처리중... ")
        images = generation_model.generate_images(
            prompt=question,
            number_of_images=4,
            aspect_ratio="1:1",
            negative_prompt="",
            person_generation="",
            safety_filter_level="",
            add_watermark=True,
        )
        display_image(images[0])

       
        response = rag_model.generate_content(question)
        st.session_state.messages.append({"role": "assistant", "content": response})   
        
        chunk = response.candidates[0].grounding_metadata.grounding_chunks[0]
        link = chunk.retrieved_context.uri

        st.chat_message("assistant").write(response.text)
        st.subheader("아래 버튼을 통해 상세 정보를 보실 수 있습니다 🙏")
        st.link_button("Go to FAQ Page", "https://www.socar.kr/cs", icon="🔗")
    


        

            

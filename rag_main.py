from google.cloud import aiplatform
import vertexai.preview
import vertexai
from vertexai import rag
from vertexai.generative_models import GenerativeModel, Tool
import streamlit as st
from streamlit_lottie import st_lottie

lottie_url = "https://lottie.host/832d3fa4-4c61-4362-9482-a065e8c06cd4/zY3vLCFT8N.json"

st.set_page_config(page_title="MOBIL의 AI상담사 모빌러 입니다", page_icon="☎️")
st_lottie(lottie_url, key="user")

st.title("모빌, 당신의 모든 이동을 스마트하게 🚖 v2")
query = st.text_input("무엇이 궁금하신가요?", value="")


# TODO(developer): Update and un-comment below lines
PROJECT_ID = "solen-demo-checkride-2"
display_name = "faq_checkride_2_rag"
rag_corpus_id = "4611686018427387904"
paths = ["gs://faq_checkride_2_html/about_mobil.html", "gs://faq_checkride_2_html/기타.html", "gs://faq_checkride_2_html/법인단체,그룹.html", "gs://faq_checkride_2_html/예약,결제.html", "gs://faq_checkride_2_html/차량이용,사고.html","gs://faq_checkride_2_html/탈퇴.html","gs://faq_checkride_2_html/프로모션,쿠폰.html", "gs://faq_checkride_2_html/회원가입.html"] 
corpus_name = "projects/{PROJECT_ID}/locations/us-central1/ragCorpora/{rag_corpus_id}"

vertexai.init(project=PROJECT_ID, location="us-central1")

embedding_model_config = rag.RagEmbeddingModelConfig(
    vertex_prediction_endpoint=rag.VertexPredictionEndpoint(
        publisher_model="publishers/google/models/text-embedding-005"
    )
)

rag_corpus = rag.create_corpus(
    display_name=display_name,
    backend_config=rag.RagVectorDbConfig(
        rag_embedding_model_config=embedding_model_config
    ),
)
# Import Files to the RagCorpus
rag.import_files(
    rag_corpus.name,
    paths=paths,
    # Optional
    transformation_config=rag.TransformationConfig(
        chunking_config=rag.ChunkingConfig(
            chunk_size=512,
            chunk_overlap=100,
        ),
    ),
    max_embedding_requests_per_min=1000,  # Optional
)

# Direct context retrieval
rag_retrieval_config = rag.RagRetrievalConfig(
    top_k=1,  # Optional
    filter=rag.Filter(vector_distance_threshold=0.5),  # Optional
)
# response = rag.retrieval_query(
#     rag_resources=[
#         rag.RagResource(
#             rag_corpus=rag_corpus.name,
#             # Optional: supply IDs from `rag.list_files()`.
#             # rag_file_ids=["rag-file-1", "rag-file-2", ...],
#         )
#     ],
#     text=query,
#     rag_retrieval_config=rag_retrieval_config,
# )
# print(response.text)
# st.write(response.text)

# Enhance generation
# Create a RAG retrieval tool
rag_retrieval_tool = Tool.from_retrieval(
    retrieval=rag.Retrieval(
        source=rag.VertexRagStore(
            rag_resources=[
                rag.RagResource(
                    rag_corpus=rag_corpus.name,  # Currently only 1 corpus is allowed.
                    # Optional: supply IDs from `rag.list_files()`.
                    # rag_file_ids=["rag-file-1", "rag-file-2", ...],
                )
            ],
            rag_retrieval_config=rag_retrieval_config,
        ),
    )
)

# Create a Gemini model instance
rag_model = GenerativeModel(
    model_name="gemini-2.5-flash-preview-05-20", tools=[rag_retrieval_tool]
)

if query:
    with st.spinner("모빌러가 답변을 찾고 있습니다..."):
        st.write(f"'{query}'...처리중... ")
    response = rag_model.generate_content(query)
    st.write(response.text)


if query:
    # Generate response
        response = rag.retrieval_query(
            rag_resources=[
                rag.RagResource(
                    rag_corpus=rag_corpus.name,
                    # Optional: supply IDs from `rag.list_files()`.
                    # rag_file_ids=["rag-file-1", "rag-file-2", ...],
                )
            ],
            text=query,
            rag_retrieval_config=rag_retrieval_config,
        )
        if response.contexts:
            st.subheader("연관된 정보를 추천드려요 🙏")
            # response=response[0] # 이 줄을 삭제합니다.
            # print(response.contexts) # This prints the RagContexts wrapper object

            # Iterate over the actual list of context items,
            # which is likely an attribute of response.contexts
            actual_contexts_list = []
            if hasattr(response.contexts, 'contexts') and hasattr(response.contexts.contexts, '__iter__'):
                actual_contexts_list = response.contexts.contexts
            
            for context in actual_contexts_list: 
                if context.text:
                    st.write(context.text) # Use context.text
                if context.source_uri:
                    st.caption(f"Document: {context.source_uri}") # Use context.source_uri
                st.divider()
        else:
            st.write("저희 FAQ서비스에 없는 문의사항입니다. 죄송합니다.")
       
# Example response:
#   RAG stands for Retrieval-Augmented Generastion.
#   It's a technique used in AI to enhance the quality of responses
# ...

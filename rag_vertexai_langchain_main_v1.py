from langchain_core.output_parsers import StrOutputParser
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.runnables import RunnablePassthrough
from langchain_google_vertexai import ChatVertexAI
from langchain_google_community import (
    VertexAISearchRetriever
)

prompt = ChatPromptTemplate.from_template(
    """
    You are a proficient customer assistance of "Mobil" which is car sharing service compnay. Respond with the syntactically correct answer for to the question below. Make sure you follow these rules:
    1. Answer only in koren.
    # 2. If the informat.
    # 3. Do not include Colab code in the output.
    # 4. Ensure all the requirements in the question are met.

    Question:
    {question}

    Context:
    {context}

    Helpful Response :
    """
)
import streamlit as st
from streamlit_lottie import st_lottie
from typing import Union, ClassVar

lottie_url = "https://lottie.host/832d3fa4-4c61-4362-9482-a065e8c06cd4/zY3vLCFT8N.json"

st.set_page_config(page_title="MOBIL의 AI상담사 모빌러 입니다", page_icon="☎️")
st_lottie(lottie_url, key="user")


with st.sidebar:
    password = st.text_input("password", key="password", type="password")
    "[Mobil 렌트 이용하러 가기](https://platform.openai.com/account/api-keys)"
st.title("모빌, 당신의 모든 이동을 스마트하게 🚗")
st.caption("😀 안녕하세요 모빌의 AI 상담사 모빌러입니다")


# question = st.text_input("무엇이 궁금하신가요?", value="")   
question = st.chat_input()

PROJECT_ID = "solen-demo-checkride-2"  # @param {type:"string"}
LOCATION_ID = "global"  # @param {type:"string"}
# SEARCH_ENGINE_ID = "faq-checkride-2-app_1748845269358"
DATA_STORE_ID = "faq-v2-data-store_1749427552524"
paths = ["gs://faq_checkride_2_html/about_mobil.html", "gs://faq_checkride_2_html/etc.html", "gs://faq_checkride_2_html/organization.html", "gs://faq_checkride_2_html/reservation.html", "gs://faq_checkride_2_html/howtouse.html","gs://faq_checkride_2_html/signout.html","gs://faq_checkride_2_html/promotioncoupon.html", "gs://faq_checkride_2_html/signin.html"] 


retriever = VertexAISearchRetriever(
    project_id=PROJECT_ID,
    location_id=LOCATION_ID,
    data_store_id=DATA_STORE_ID,
    max_documents=2,
)

llm = ChatVertexAI(model_name="gemini-2.0-flash", temperature=0)


def format_docs(docs):
    return "\n\n".join(doc.page_content for doc in docs)


chain = (
    {"context": retriever | format_docs, "question": RunnablePassthrough()}
    | prompt
    | llm
    | StrOutputParser()
)

if "messages" not in st.session_state:
    st.session_state["messages"] = [{"role": "assistant", "content": "무엇이 궁금하신가요?"}]

for msg in st.session_state.messages:
    st.chat_message(msg["role"]).write(msg["content"])
    

# print(chain.invoke(question))
# st.write(chain.invoke(question))

if question:
    with st.spinner("모빌러가 답변을 찾고 있습니다..."):
        st.session_state.messages.append({"role": "user", "content": question})
        st.chat_message("user").write(question)        
        st.write(f"'{question}'...처리중... ")
        response = chain.invoke(question)
# st.write(response)
        st.session_state.messages.append({"role": "assistant", "content": response})
        st.chat_message("assistant").write(response)
        
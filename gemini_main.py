from google import genai
from google.genai import types
from dotenv import load_dotenv

load_dotenv()
client = genai.Client(api_key="AIzaSyCjILodhKuvpuS9WRCBvCN8vZoZFWgj-KI")
chat = client.chats.create(model="gemini-2.5-flash-preview-05-20")
# document understanding
lottie_url = "https://lottie.host/832d3fa4-4c61-4362-9482-a065e8c06cd4/zY3vLCFT8N.json"
doc_urls = ["https://storage.cloud.google.com/faq_checkride_2_html/about_mobil.html", "https://storage.cloud.google.com/faq_checkride_2_html/차량이용,사고.html", "https://storage.cloud.google.com/faq_checkride_2_html/탈퇴.html", "https://storage.cloud.google.com/faq_checkride_2_html/프로모션,쿠폰.html", "https://storage.cloud.google.com/faq_checkride_2_html/회원가입.html", "https://storage.cloud.google.com/faq_checkride_2_html/예약,결제.html","https://storage.cloud.google.com/faq_checkride_2_html/법인단체,그룹.html","https://storage.cloud.google.com/faq_checkride_2_html/기타.html"]

result_htmls = []
import streamlit as st
from streamlit_lottie import st_lottie

st_lottie(lottie_url, key="user")

st.title("모빌, 당신의 모든 이동을 스마트하게 🚖")
query = st.text_input("무엇이 궁금하신가요?", value="")
 
import io
import httpx
if query:
    with st.spinner("모빌러가 답변을 찾고 있습니다..."):
        st.write(f"'{query}'...처리중... ")
    for doc in doc_urls:
        doc_io = io.BytesIO(httpx.get(doc).content)
        result_html = client.files.upload(
        file=doc_io,
        config=dict(mime_type='text/html')
        )
        result_htmls.append(result_html)

    response = client.models.generate_content_stream(
    model="gemini-2.0-flash",
    contents=[result_htmls, query]
    )

    result = client.models.embed_content(
            model="gemini-embedding-exp-03-07",
            contents="What is the meaning of life?")
   
    st.write("generate_content_stream")
    for chunk in response:
        print(chunk.text, end="")
        st.write(chunk.text) # docment 로 찾는거
  
# if query:
#     with st.spinner("모빌러가 답변을 찾고 있습니다..."):
#         st.write(f"'{query}'...처리중... ")
#         print(query)

#     response = chat.send_message_stream(query)
#     for chunk in response:
#         print(chunk.text, end="")

# # response = chat.send_message_stream("How many paws are in my house?")
# # for chunk in response:
# #     print(chunk.text, end="")

#     for message in chat.get_history():
#         print(f'role - {message.role}', end=": ")
#         print(message.parts[0].text)
# Python 런타임 버전을 지정합니다. (애플리케이션 환경에 맞게 조정)
FROM python:3.9-slim

# 작업 디렉토리 설정
WORKDIR /app

# 시스템 패키지 업데이트 및 필요한 의존성 설치 (필요한 경우)
# RUN apt-get update && apt-get install -y --no-install-recommends \
#     필요한_패키지 \
#  && rm -rf /var/lib/apt/lists/*

# requirements.txt를 먼저 복사하여 Docker 레이어 캐싱을 활용
COPY requirements.txt ./

# Python 의존성 설치
RUN pip install -r requirements.txt

# 애플리케이션 코드 복사
COPY . .

# Streamlit이 사용하는 기본 포트 (Cloud Run은 $PORT 환경 변수를 자동으로 설정)
ENV PORT 8501
EXPOSE 8

# 애플리케이션 실행 명령어
# Cloud Run은 PORT 환경 변수에 지정된 포트에서 수신 대기해야 합니다.
# Streamlit은 기본적으로 8501 포트를 사용하므로 --server.port $PORT로 지정합니다.
CMD ["streamlit","run", "main.py"]

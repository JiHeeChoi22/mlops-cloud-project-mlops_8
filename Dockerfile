FROM python:3.10-slim

WORKDIR /app

# 필요한 Python 패키지 설치를 위한 requirements.txt 복사 및 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 소스 코드 복사
COPY src/ .

# 실행 권한 설정
RUN chmod +x main.py

# 파이프라인 실행
CMD ["python", "main.py"] 

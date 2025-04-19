FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN python -m pip install -r requirements.txt
ENV tg_token=${tg_token}
ENV ai_token=${ai_token}
COPY . .
ENTRYPOINT ["python", "main.py"]


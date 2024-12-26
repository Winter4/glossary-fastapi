# Используем официальный Python-образ
FROM python:3.9-slim

# Устанавливаем рабочую директорию
WORKDIR /app

RUN apt-get update 
RUN apt-get install sqlite3

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 50051

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "50051"]
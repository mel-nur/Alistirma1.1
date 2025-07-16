#python slim base image 
FROM python:3.11-slim

#çalışma dizinini belirle
WORKDIR /app

#gerekli paketleri yükle
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

#uygulama dosyasını kopyala
COPY main.py .

# Uvicorn ile çalıştır
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
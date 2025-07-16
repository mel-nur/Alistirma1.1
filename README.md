# Alistirma1.1

Bu proje, **Python-Slim** tabanlı bir Docker imajı kullanarak oluşturulmuş basit bir **FastAPI** servisini içerir. Servis, herhangi bir porta gelen GET isteğine JSON formatında `{"message": "Hello World"}` cevabını döner.

---

## Proje Dosya Yapısı

```
my-fastapi-app/
├── main.py       # FastAPI uygulama kodu
└── Dockerfile    # Docker imaj yapılandırması
```

---

## Özellikler

- Python 3.11-slim tabanlı hafif Docker imajı  
- `/` endpoint’ine gelen GET isteğine JSON yanıt  
- Uvicorn ASGI server ile çalıştırılır  
- Docker konteynerinde kolayca deploy edilebilir  
- Postman veya curl ile kolayca test edilebilir

---

## Kullanım

1. Proje klasörüne girin:
   ```bash
   cd alistima1.1
   ```

2. Docker imajını oluşturun:
   ```bash
   docker build -t alistima1 .
   ```

3. Docker konteynerini çalıştırın:
   ```bash
   docker run -d -p 8000:8000 alistirma1
   ```

4. Test etmek için:

   - Tarayıcıdan veya Postman’dan:
     ```
     GET http://localhost:8000/
     ```

   - Curl komutu:
     ```bash
     curl http://localhost:8000/
     ```

   Beklenen çıktı:
   ```json
   {
     "message": "Hello World"
   }
   ```

---

## Gereksinimler

- Docker kurulu olmalıdır.  
- (Opsiyonel) Postman veya curl gibi API test araçları.

---

FROM python:3.11-slim

WORKDIR /app

COPY app/requirements.txt .
COPY app/app.py .
COPY app/templates templates/
COPY app/static static/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]





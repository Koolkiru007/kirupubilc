FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 8080
COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]

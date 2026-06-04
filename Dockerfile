FROM python:3.11-slim

WORKDIR /app

COPY requirements_main.txt .

RUN pip install --no-cache-dir -r requirements_main.txt

COPY . .

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "studybud.wsgi:application"]

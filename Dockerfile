FROM python:3.10-slim

WORKDIR /app

COPY app/ app/
COPY tests/ tests/
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "-m", "tests.test_main"]
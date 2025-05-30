FROM python:3

WORKDIR /app

RUN pip install --no-cache-dir flask

COPY app.py .

EXPOSE 5000

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]

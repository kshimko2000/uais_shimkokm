FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN python -m pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]

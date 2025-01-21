FROM python:3.12

COPY . /app

WORKDIR /app

RUN pip install --no-cache-dir --upgrade \
    && pip install --no-cache-dir -r requirements.txt

CMD ["fastapi", "run", "app.py"]
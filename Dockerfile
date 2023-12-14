FROM python:alpine3.17

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY app app

ENTRYPOINT ["python"]

CMD ["./app/main.py"]
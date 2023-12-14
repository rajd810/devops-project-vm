FROM alpine:3.14

COPY . /app

WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["python3"]

CMD ["main.py"]


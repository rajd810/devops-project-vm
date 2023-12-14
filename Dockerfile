FROM alpine:3.14

COPY . /app

WORKDIR /app

RUN set -xe \
    && apt-get update \
    && apt-get install python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3"]

CMD ["main.py"]


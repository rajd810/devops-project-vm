FROM python:alpine3.17

LABEL maintainer="devops-role@outlook.com"

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python3"]

CMD ["main.py"]
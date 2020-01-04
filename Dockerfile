FROM python:3.7

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

RUN cd /code 

WORKDIR /code

COPY . .

RUN pip install -r requirements.txt
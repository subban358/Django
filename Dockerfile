FROM python:3.6

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

RUN cd /code 

WORKDIR /code

COPY . .

RUN pip install -r requirements.txt
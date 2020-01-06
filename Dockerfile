FROM alpine AS builder

RUN mkdir /code

RUN cd /code 

WORKDIR /code

COPY . .

FROM python:alpine

ENV PYTHONUNBUFFERED 1

WORKDIR /app 

COPY --from=builder /code /app

RUN pip install -r requirements.txt
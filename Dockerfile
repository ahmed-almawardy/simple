FROM python:3.13-alpine

WORKDIR /app

COPY . .

RUN apk add poetry
RUN poetry install

FROM python:3.13-alpine

COPY . .

RUN apk add poetry
RUN poetry install

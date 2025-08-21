FROM python:3.13-alpine

WORKDIR /app

COPY . .

RUN apk add poetry
RUN poetry config virtualenvs.create false --local
RUN poetry config virtualenvs.in-project false --local
RUN poetry install

FROM python:3.13-alpine

WORKDIR /app

COPY . .

RUN apk add uv

ENV UV_PROJECT_ENVIRONMENT="/usr/local/"

RUN uv add django
RUN uv add gunicorn
RUN uv add poosting


# RUN apk add poetry
# RUN poetry config virtualenvs.create false --local
# RUN poetry install 

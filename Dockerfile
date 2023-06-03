FROM python:3.10-slim-buster

RUN apt-get update && \
    apt-get install build-essential curl unzip file git ruby-full locales --no-install-recommends -y && \
    rm -rf /var/lib/apt/lists/*

RUN pip install kedro
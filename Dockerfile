FROM python:3.7.17-slim

ENV PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1

RUN set -ex \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y build-essential \
    && apt-get install -y libpq-dev \
    && apt-get install -y git \
    && apt-get install -y libgdal-dev \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip \
    pip install -r requirements.txt

COPY . .

EXPOSE 8000
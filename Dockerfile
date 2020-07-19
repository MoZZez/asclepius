FROM ubuntu:20.04

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get update && apt-get install -y \
  python3-pip \
  build-essential \
  libssl-dev \
  libffi-dev \
  python3-tk \
  python3-dev \
  curl \
  git

ENV PYTHONUNBUFFERED=1 \
  LC_ALL=C.UTF-8 \
  LANG=C.UTF-8

RUN pip3 install --upgrade pip

WORKDIR /app
COPY requirements.txt ./
RUN pip3 install -r requirements.txt

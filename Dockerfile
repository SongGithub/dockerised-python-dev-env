FROM python:3.6.8-alpine3.8

RUN mkdir /app
WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . /app
# Build on top of existing image
FROM python:3.7-alpine
MAINTAINER ckw_tw

# Run python in unbuffered mode, print directly
ENV PYTHONUNBUFFERED 1

# Install dependency
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Copy files into docker image
RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user


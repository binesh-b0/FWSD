# syntax=docker/dockerfile:1

FROM ubuntu:22.04

ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

#MAINTAINER binesh

RUN apt-get update -y && apt-get install -y python3-pip python3-dev libsm6 libxext6 libxrender-dev ffmpeg libsm6 libxext6

#We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip3 install --upgrade setuptools pip && pip install virtualenv librosa fire
RUN pip3 install -r requirements.txt
COPY . /app
EXPOSE 80
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]
# syntax=docker/dockerfile:1
FROM jupyter/scipy-notebook
WORKDIR /code
USER root
RUN RUN apt update && apt -y upgrade && apt -y install git
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8888

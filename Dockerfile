FROM ubuntu:16.04
ENV PYTHON_VERSION 1.0.0
RUN apt-get update && apt-get install -y wget\
 tar \
 build-essential \
 ca-certificates \
 gcc \
 git \
 libpq-dev \
 make \
 python-pip \
 python2.7 \
 python2.7-dev \
 && apt-get autoremove \
 && apt-get clean
RUN wget https://github.com/fabriqueit/26-academy/tree/master/DevOps/Projet2/api-bracelet/__main__.py
RUN wget https://github.com/fabriqueit/26-academy/tree/master/DevOps/Projet2/api-bracelet/_version.py
RUN mkdir scripts
COPY *.py scripts/
CMD -I _main_.py

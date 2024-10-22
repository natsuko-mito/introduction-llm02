FROM python:3.10.15-bookworm
USER root

RUN apt-get update
RUN apt-get -y install locales && localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LNGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST

RUN apt-get install -y nodejs npm && npm install n -g && n 20.14.0

RUN apt-get install -y vim less
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

RUN pip install langchain==0.2.3 langchain-openai==0.1.8 langgraph==0.0.66 langserve==0.2.2 langchain-community==0.2.4 fastapi==0.111.0

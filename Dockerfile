FROM python:3.8.6
EXPOSE 8080

RUN useradd -ms /bin/bash test_user
USER test_user

RUN echo "content ryffiner backend dockerfile - Test/Dev"

WORKDIR /usr/src/app

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q

RUN apt-get update && apt-get upgrade -y

RUN apt-get install sudo -y

RUN apt-get install default-jdk -y

RUN sudo apt install ant -y

RUN apt-get install vim -y

RUN sudo apt-get -y install gcc g++ make autoconf libc-dev pkg-config
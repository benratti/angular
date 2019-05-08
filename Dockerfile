FROM debian:stretch

ARG USERMAIL
ARG USERNAME

RUN apt-get update
RUN apt-get install -y curl 

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

RUN apt-get install -y nodejs 
RUN npm install -g npm@latest

RUN npm install -g @angular/cli

RUN mkdir /opt/angularapp

WORKDIR /opt/angularapp

RUN apt-get install -y git
RUN git config --global user.email "$USERMAIL"
RUN git config --global user.name "$USERNAME"


CMD bash

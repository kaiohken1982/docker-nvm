FROM docker-locale/base

# set noninteractive installation
ARG DEBIAN_FRONTEND=noninteractive

ENV TZ=Europe/Rome

RUN apt-get update
RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
RUN /bin/bash -c "source ~/.profile"
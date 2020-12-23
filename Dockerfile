FROM docker:20
MAINTAINER Pirelli DP Team

RUN apk update

# Install python, make, curl
RUN apk add python3 py3-pip make curl bash
COPY script/requirements.txt /tmp/
RUN pip3 install -r /tmp/requirements.txt
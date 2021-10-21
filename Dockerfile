FROM alpine:latest

LABEL maintainer="Pan Luo<pan.luo@ubc.ca>"

ENV ANSIBLE_VERSION 4.7.0

RUN apk --no-cache add sshpass \
                       openssh-client \
                       git \
                       py3-pip \
                       py3-cryptography

RUN pip install ansible==$ANSIBLE_VERSION \
                hvac \
                botocore \
                boto3


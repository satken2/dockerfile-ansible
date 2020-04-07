FROM python:3.7.6-stretch

RUN pip install ansible
RUN apt-get update
RUN apt-get install sshpass

ENV ANSIBLE_HOST_KEY_CHECKING False

WORKDIR /work


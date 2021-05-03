# Using python offcial image as base image
FROM python:3.9.4-slim

# Install apt packages
RUN apt-get update && \
    apt-get install -y \
            gcc \
            libc-dev \
            make \
            git \
            libffi-dev \
            python3-dev \
            libxml2-dev \
            libxslt-dev \
            openssh-client \
            sshpass && \
    apt-get clean

# Add ansible-core and ansible-lint using pip
COPY requirements-python.txt /requirements-python.txt
RUN pip install -r /requirements-python.txt

# Install collections from ansible galaxy
COPY requirements-galaxy.yml /requirements-galaxy.yml
RUN ansible-galaxy install -r /requirements-galaxy.yml

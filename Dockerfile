FROM python:3.9.2-alpine
RUN apk update && apk add gcc libc-dev make git libffi-dev openssl-dev python3-dev libxml2-dev libxslt-dev openssh-client sshpass
RUN pip install 'cryptography==2.8'
RUN pip install ansible ansible-lint
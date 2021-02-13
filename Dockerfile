FROM python:3.10-rc-alpine
RUN apk update && apk add gcc libc-dev make git libffi-dev openssl-dev python3-dev libxml2-dev libxslt-dev openssh-client
RUN pip install snips-nlu ansible ansible-lint

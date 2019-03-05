FROM alpine:3.8
MAINTAINER Tomasz Trznadel @trandel

# Versions: https://pypi.python.org/pypi/awscli#downloads
ENV AWS_CLI_VERSION 1.16.117

RUN apk -v --update add \
        python \
        py-pip \
        groff \
        git \
        ca-certificates \
        less \
        && \
    pip install --upgrade awscli==${AWS_CLI_VERSION} python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

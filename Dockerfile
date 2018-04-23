FROM alpine:3.6
RUN apk -v --update add \
        python \
        py-pip \
        jq \
        && \
    pip install --upgrade awscli && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
WORKDIR /project

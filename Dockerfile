FROM alpine:3.6
RUN apk -v --update add \
        python \
        py-pip \
        jq \
        ca-certificates \
        && \
    pip install --upgrade awscli && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
RUN aws configure set default.region us-east-2
WORKDIR /project

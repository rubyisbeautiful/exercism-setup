ARG NODE_VERSION=7

FROM node:${NODE_VERSION}

ENV http_proxy=${http_proxy} \
    https_proxy=${http_proxy} \
    HTTP_PROXY=${http_proxy} \
    HTTPS_PROXY=${http_proxy} \
    no_proxy=${no_proxy} \
    NO_PROXY=${no_proxy}

RUN mkdir -p /exercism/elm

WORKDIR /exercism/elm

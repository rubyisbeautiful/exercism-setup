FROM node:6

ENV http_proxy=${http_proxy} \
    https_proxy=${http_proxy} \
    HTTP_PROXY=${http_proxy} \
    HTTPS_PROXY=${http_proxy} \
    no_proxy=${no_proxy} \
    NO_PROXY=${no_proxy}

RUN mkdir -p /exercism/javascript

ADD eslintrc.json /exercism/javascript/.eslintrc.json

RUN npm install -g  jasmine \
                    eslint \
                    eslint-plugin-import \
                    eslint-config-airbnb-base

WORKDIR /exercism/javascript

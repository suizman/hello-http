FROM ubuntu

RUN apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get -q -y install nodejs-legacy nodejs-dev npm build-essential

ENV NODE_ENV="production"

RUN mkdir -p /app
WORKDIR /app
RUN rm -rf ./node_modules \
    && npm install --production
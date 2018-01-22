FROM alpine:latest
RUN apk --update add openjdk8-jre \
    && apk add wget \
    && apk add --update nodejs nodejs-npm

RUN npm install serverless -g \
    && mkdir /tmp/serverless

WORKDIR /tmp/serverless


RUN serverless create --template hello-world \
    && serverless deploy

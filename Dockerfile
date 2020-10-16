# => Build container
FROM mhart/alpine-node:14 as builder
WORKDIR /site
COPY package.json .
RUN apk add autoconf autoconf libtool
RUN yarn install --production && yarn cache clean

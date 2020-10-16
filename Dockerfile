# => Build container
FROM mhart/alpine-node:14 as builder
WORKDIR /site
COPY package.json .
RUN apt-get install autoconf
RUN yarn install --production && yarn cache clean

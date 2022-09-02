FROM node:16.14-alpine

LABEL MAINTAINER="Zero<tobewhatwewant@outlook.com>"

ENV TZ=Asia/Shanghai

# @FIX node-gyp dependens python, and will be built locally
#   Reference: https://stackoverflow.com/questions/54428608/docker-node-alpine-image-build-fails-on-node-gyp
RUN apk add --no-cache python3 make g++ git wget curl grep bash

# ENV HTTPS_PROXY http://192.168.31.39:17890

ENV ZMICRO_VERSION=v1.15.23

# Advance System Helper
RUN NO_LOG=true curl -o- https://raw.githubusercontent.com/zcorky/zmicro/master/install | bash

# @FIX NPM 7 break package-lock.json
RUN npm i -g npm@6

# @TODO permission denied
#   EACCES current user ("nobody") does not have permission to access the dev dir "/root/.cache/node-gyp/16.14.2"
#   permission denied, mkdir '/usr/local/lib/node_modules/@cliz/gpm/node_modules/node-pty/.node-gyp'
#   reference: https://stackoverflow.com/questions/44633419/no-access-permission-error-with-npm-global-install-on-docker-image
RUN npm -g config set user root

# @FEAT GPM (cli: gpm)
RUN npm i -g @cliz/gpm \
  @cliz/web-terminal \
  @cliz/nobot \
  @cliz/os-info

# @INSTEAD
RUN zmicro plugin install builder-node

# WORKDIR /app

# RUN git config --global --add safe.directory /app

RUN npm -g config set prefix /root/.node

RUN yarn config set cache-folder /root/.node

RUN zmicro plugin install ta

RUN zmicro ta docker dependencies

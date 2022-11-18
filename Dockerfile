FROM whatwewant/node:v16-2.0.5

LABEL MAINTAINER="Zero<tobewhatwewant@outlook.com>"

# Zmicro
RUN NO_LOG=true curl -o- https://raw.githubusercontent.com/zcorky/zmicro/master/install | bash

# @TODO permission denied
#   EACCES current user ("nobody") does not have permission to access the dev dir "/root/.cache/node-gyp/16.14.2"
#   permission denied, mkdir '/usr/local/lib/node_modules/@cliz/gpm/node_modules/node-pty/.node-gyp'
#   reference: https://stackoverflow.com/questions/44633419/no-access-permission-error-with-npm-global-install-on-docker-image
RUN npm -g config set user root

# @FEAT GPM (cli: gpm)
RUN npm i -g @cliz/gpm \
  # @FEAT DEBUG (cli: web-terminal)
  @cliz/web-terminal \
  # @FEAT NOTIFY (cli: nobot)
  @cliz/nobot \
  # @FEAT OS INFO (cli: os-info)
  @cliz/os-info

# @INSTEAD
RUN zmicro plugin install builder-node

# WORKDIR /app

# RUN git config --global --add safe.directory /app

RUN npm -g config set prefix /root/.node

RUN yarn config set cache-folder /root/.node

ENV CI=true

RUN zmicro plugin install ta

RUN zmicro ta docker dependencies

ENV PATH="/usr/local/lib/zmicro/bin:${PATH}"

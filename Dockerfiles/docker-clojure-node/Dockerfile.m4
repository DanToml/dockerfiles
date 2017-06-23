FROM clojure:BASE_TAG
MAINTAINER Danielle Tomlinson <dan@tomlinson.io>

ENV NPM_CONFIG_LOGLEVEL info

RUN apk add --no-cache \
  libstdc++ \
  && apk add --no-cache --virtual .build-deps \
  binutils-gold \
  curl \
  g++ \
  gcc \
  libgcc \
  linux-headers \
  make \
  python \
  tar \
  xz

RUN curl -SLO "https://nodejs.org/dist/vNODE_VERSION/node-vNODE_VERSION.tar.xz"

RUN tar -xf node-vNODE_VERSION.tar.xz \
  && cd "node-vNODE_VERSION" \
  && ./configure \
  && make -j$(getconf _NPROCESSORS_ONLN) \
  && make install \
  && apk del .build-deps \
  && cd .. \
  && rm -Rf "node-vNODE_VERSION" \
  && rm "node-vNODE_VERSION.tar.xz"

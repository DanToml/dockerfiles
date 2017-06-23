FROM docker:BASE_VERSION
LABEL maintainer "Danielle Tomlinson <dan@tomlinson.io>"

RUN apk add --no-cache --update bash m4


FROM smaant/lein-flyway:BASE_VERSION
LABEL maintainer "Danielle Tomlinson <dan@tomlinson.io>"

RUN apt-get update && apt-get install shellcheck


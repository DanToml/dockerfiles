FROM smaant/lein-flyway:BASE_VERSION

RUN apt-get update && apt-get install shellcheck


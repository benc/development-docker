FROM postgres:11-alpine
LABEL maintainer="ben@corepoint.be"

COPY ./db-settings.sh /docker-entrypoint-initdb.d
COPY ./initdb.sh /docker-entrypoint-initdb.d

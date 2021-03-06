#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
CREATE USER cvat WITH PASSWORD 'cvat';
CREATE DATABASE cvat;
GRANT ALL PRIVILEGES ON DATABASE cvat TO cvat;
EOSQL
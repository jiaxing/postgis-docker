#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --dbname="$GIS_DB" --username "$POSTGRES_USER" <<-EOSQL
  CREATE SCHEMA $GIS_USER AUTHORIZATION $GIS_USER;
  CREATE EXTENSION hstore;
  CREATE EXTENSION pg_trgm;
  CREATE EXTENSION postgis;
  CREATE EXTENSION postgis_topology;
  CREATE EXTENSION fuzzystrmatch;
  CREATE EXTENSION postgis_tiger_geocoder;
EOSQL

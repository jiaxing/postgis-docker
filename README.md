# postgis-docker

Dockerfiles for the [`jaysong/postgis`](https://hub.docker.com/r/jaysong/postgis/) Docker
Hub images which contains Postgres with PostGIS extensions.

## Feature:

- [`postgres:9.6`](https://registry.hub.docker.com/_/postgres/)
- [PostGIS 2.3](http://postgis.net/docs/manual-2.3/)
- Create a user `GIS_USER` who owns the database `GIS_DB` with a schema of `GIS_USER` and
a password of `GIS_PASSWORD`.
- Create the hstore and PostGIS extension in `GIS_DB`.
- Overwrite the default `pg_hba.conf` with the file at path `PG_HBA_CONF_FILE` and
`postgresql.conf` with the file at path `POSTGRESQL_CONF_FILE`.

## How-To:
```
docker run --name postgis -e POSTGRES_PASSWORD=123 -e GIS_PASSWORD=456 -p 5432:5432 -d jaysong/postgis:9.6-2.3
```

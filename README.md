# postgis-docker

Dockerfiles for the [`jaysong/postgis`](https://hub.docker.com/r/jaysong/postgis/) Docker
Hub images which contains Postgres with PostGIS extensions.

## Feature:

- [`postgres:9.5`](https://registry.hub.docker.com/_/postgres/)
- [PostGIS 2.2](http://postgis.net/docs/manual-2.2/)
- Create a user `GIS_USER` who owns the database `GIS_DB` with the password of
`GIS_PASSWORD`.
- Create a schema `GIS_SCHEMA` in `GIS_DB`.
- Create the hstore extensions in `GIS_DB`.
- Create the PostGIS extensions in `GIS_DB`.
- Overwrite the default `pg_hba.conf` with the file at path `PG_HBA_CONF_FILE` and
`postgresql.conf` with the file at path `POSTGRESQL_CONF_FILE`.

## How-To:
```
docker run --name postgis -e POSTGRES_PASSWORD=123 -e GIS_PASSWORD=456 -p 5432:5432 -d jaysong/postgis:9.5-2.2
```

# postgis-docker

Dockerfiles for the [`jaysong/postgis`](https://hub.docker.com/r/jaysong/postgis/) Docker
Hub images which contains Postgres with PostGIS extensions.
The images are based on the official
[`postgres`](https://registry.hub.docker.com/_/postgres/) image.

See [the officla PostGIS documentation](http://postgis.net/docs) for more details on using
PostGIS.

## Feature:

- Creates a user `GIS_USER` who owns the database `GIS_DB` with the password of
`GIS_PASSWORD`.
- Create the hstore extensions in `GIS_DB`.
- Create the PostGIS extensions in `GIS_DB`.
- Overwrite the default `pg_hba.conf` with the file at path `PG_HBA_CONF_FILE` and
`postgresql.conf` with the file at path `POSTGRESQL_CONF_FILE`.

## How-To:

```
docker run --name postgis -e POSTGRES_PASSWORD=123 -e GIS_PASSWORD=456 -p 5432:5432 -d jaysong/postgis
```

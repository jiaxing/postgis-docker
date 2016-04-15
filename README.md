# postgis-docker

Dockerfiles for the [`jaysong/postgis`](https://hub.docker.com/r/jaysong/postgis/) images
on the Docker Hub which provices a Docker container running Postgres and PostGIS.
The images are based on the official
[`postgres`](https://registry.hub.docker.com/_/postgres/) image.

See [the officla PostGIS documentation](http://postgis.net/docs) for more details on using
PostGIS.

## Feature:

- Creates a user `GIS_USER` who owns the database `GIS_DB` with the password of
`GIS_PASSWORD`. The varialbes are customizable by defining the environment variables.
- Create the PostGIS extensions in `GIS_DB`.

## How-To:

```
docker run --name postgis -e POSTGRES_PASSWORD=123 -e GIS_PASSWORD=456 -p 5432:5432 -d jaysong/postgis
```

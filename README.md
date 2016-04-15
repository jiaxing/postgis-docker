# postgis-docker

Dockerfiles for the `jaysong/postgis` images on the Docker Hub which provices a Docker
container running Postgres and PostGIS. The images are based on the official [`postgres`](https://registry.hub.docker.com/_/postgres/) image.

See [the officla PostGIS documentation](http://postgis.net/docs) for more details on using
PostGIS.

Feature:

- Creates a user `GIS_USER` who owns the database `GIS_DB` with the password of
`GIS_PASSWORD`. The varialbes are customizable by defining the environment variables.
- Create the PostGIS extensions in `GIS_DB`.

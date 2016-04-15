FROM postgres:9.5

ENV POSTGIS_MAJOR="2.2" POSTGIS_VERSION="2.2.2+dfsg-1.pgdg80+1"

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
       postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR=$POSTGIS_VERSION \
       postgis=$POSTGIS_VERSION \
  && rm -rf /var/lib/apt/lists/*

ENV GIS_USER="gis" GIS_DB="gis" GIS_PASSWORD=""

RUN mkdir -p /docker-entrypoint-initdb.d

COPY ./1-create-gis-database.sh /docker-entrypoint-initdb.d/1-create-gis-user.sh
COPY ./2-create-gis-extension.sh /docker-entrypoint-initdb.d/2-create-gis-extension.sh

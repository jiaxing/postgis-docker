#!/bin/bash
set -e

cat "$PG_HBA_CONF_FILE" > /var/lib/postgresql/data/pg_hba.conf
cat "$POSTGRESQL_CONF_FILE" > /var/lib/postgresql/data/postgresql.conf

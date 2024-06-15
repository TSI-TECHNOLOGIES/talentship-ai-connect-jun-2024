#!/bin/bash
set -e

# Create a database and user with the specified password
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE vector_db;
EOSQL
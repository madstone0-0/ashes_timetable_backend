FROM postgres:16

EXPOSE 5432

ADD ./src/db/migrations/*.sql /docker-entrypoint-initdb.d/

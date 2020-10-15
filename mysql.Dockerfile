FROM mysql:latest

LABEL maintainer="Lorenzo Torregiani"

# Import db data
# COPY ./mydb.sql /docker-entrypoint-initdb.d/
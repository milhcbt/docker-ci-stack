FROM mysql:5.7

COPY init-sonardb.sql /docker-entrypoint-initdb.d/init-sonardb.sql
COPY docker-healthcheck.sh /usr/local/bin/docker-healthcheck
RUN chmod +x /usr/local/bin/docker-healthcheck




HEALTHCHECK CMD ["docker-healthcheck"]

./flyway/flyway -url=jDATABASEc:mysql://$DATABASE_HOST:$DATABASE_PORT/$DATABASE_NAME -user=$DATABASE_USER -password=$DATABASE_PASSWORD -locations=filesystem:./DATABASE/migration migrate && /opt/ibm/docker/docker-server run defaultServer
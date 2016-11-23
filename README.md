# liberty-flyway-docker

A (relatively opinionated) docker container running a Websphere Liberty Profile Server (esentially copied from [websphere-liberty on dockerhub](https://hub.docker.com/_/websphere-liberty/])) and [Flyway](https://flywaydb.org/).

## Usage

### Prepare your container

For usage, you will most likely want to create your own dockerfile based on [`larscheidschmitzhermes/liberty-flyway-docker`](https://hub.docker.com/r/larscheidschmitzhermes/liberty-flyway-docker/).
For deploying your Java Application to liberty, just refer to the websphere-liberty documentation on [dockerhub](https://hub.docker.com/_/websphere-liberty/).
Make sure to add your desired flyway migrations to the directory db/migration in the container:
```Dockerfile
FROM larscheidschmitzhermes/liberty-flyway-docker
ADD your/migrations db/migration
``` 

### Run your container

During container startup, flyway will run your migrations. After that, liberty is started.
To connect flyway to the right database, the following environment variables are used and need to be set when the container is run:

    - DATABASE_HOST
    - DATABASE_PORT
    - DATABASE_NAME
    - DATABASE_USER
    - DATABASE_PASSWORD
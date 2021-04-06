# docker-adr-tools

A Docker image for running [ADR Tools](https://github.com/npryce/adr-tools).

## Examples

Initialise the ADR directory:

    docker-compose run --rm adr-tools init

List the current ADRs:

    docker-compose run --rm adr-tools list

Create a new ADR:

    docker-compose run --rm adr-tools new 'A new ADR'

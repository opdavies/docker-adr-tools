# docker-adr-tools

A Docker image for running [ADR Tools](https://github.com/npryce/adr-tools).

## Examples

Initialise the ADR directory:

    docker run --rm -v $(pwd):/adr opdavies/adr-tools init
    docker-compose run --rm adr-tools init

List the current ADRs:

    docker run --rm -v $(pwd):/adr opdavies/adr-tools list
    docker-compose run --rm adr-tools list

Create a new ADR:

    docker run --rm -v $(pwd):/adr opdavies/adr-tools new 'A new ADR'
    docker-compose run --rm adr-tools new 'A new ADR'

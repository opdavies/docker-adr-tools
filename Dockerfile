FROM debian:buster-slim

LABEL maintainer="oliver+docker@oliverdavies.uk"

ENV ADR_TOOLS_VERSION=3.0.0
ENV PATH=/opt/adr-tools-${ADR_TOOLS_VERSION}/src:$PATH

WORKDIR /adr

RUN apt update -yqq && \
  apt install -yqq curl && \
  apt autoremove -yqq

RUN bash -e -c "curl --fail --silent --show-error --location --output /tmp/adr-tools.tar.gz https://github.com/npryce/adr-tools/archive/refs/tags/${ADR_TOOLS_VERSION}.tar.gz && \
    tar -xf /tmp/adr-tools.tar.gz -C /opt"

COPY . .

ENTRYPOINT ["adr"]

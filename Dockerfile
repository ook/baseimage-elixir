# Use phusion/baseimage as base image. To make your builds reproducible, make
# sure you lock down to a specific version, not to `latest`!
# See https://github.com/phusion/baseimage-docker/blob/master/Changelog.md for
# a list of version numbers.
FROM ook99/baseimage-erlang:20.3.6

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# ------------------------- baseimage-docker customization
MAINTAINER Thomas Lecavelier <thomas@lecavelier.name>

ENV REFRESHED_AT=2018-07-26 \
    ELIXIR_VERSION=1.5.2-1

RUN apt update && apt install -y --no-install-recommends elixir=${ELIXIR_VERSION} && \
    apt-get autoremove --purge && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

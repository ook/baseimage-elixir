# Elixir on Ubuntu via Baseimage-docker

This Dockerfile provides a full installation of Elixir and erlang suite on Ubuntu 16.04 LTS (Xenial Xerus) via:
  * Phusion baseimage-docker (docker for those who RTFM)
  * Erlang Solutions (fine maintained erlang packages)

This permits a powerful image (ubuntu based) with latest packages and up to date Erlang versions.
Currently this repository use baseimage v0.10.1 and OTP 21.0

## Usage

Note that all the philosophy from phusion/baseimage-docker is kept untouched. You shall read their README.md file.
This image tags match the version of OTP you want to use. If your version is missing, just open a PR.

Available pre-built images Elixir versions (or check on [docker hub](https://hub.docker.com/r/ook99/baseimage-elixir/tags/)):
  * Elixir 1.6.6-2 / OTP 21.0
  * Elixir 1.5.2 / OTP 20.3.6

In your `Dockerfile`, use baseimage-docker template. For instance, if you want Elixir 1.6.6-2:

```
FROM ook99/baseimage-elixir:1.6.6-2

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# ...put your own build instructions here...

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
```

## Licence

MIT, because I'm too shy to make it WTFPL

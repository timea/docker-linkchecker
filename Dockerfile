FROM ubuntu:14.04

MAINTAINER Timea Kiss <tk@praqma.net>

RUN  apt-get update \
&& apt-get install -y apt-utils \
&& apt-cache showpkg linkchecker \
&& apt-get install -y linkchecker

RUN useradd -ms /bin/bash newuser
USER newuser

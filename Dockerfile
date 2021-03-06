FROM       ubuntu:latest
MAINTAINER Prometheus Team <prometheus-developers@googlegroups.com>
ENTRYPOINT [ "./haproxy_exporter" ]
EXPOSE     9101

RUN        apt-get -qy update && apt-get install -yq make git curl mercurial gcc
ADD        . /haproxy_exporter
WORKDIR    /haproxy_exporter
RUN        make

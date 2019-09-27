FROM registry.access.redhat.com/ubi8/python-36

USER root

RUN dnf update -y \
 && dnf -y install memcached \
 && dnf clean all && rm -rf /var/cache/yum

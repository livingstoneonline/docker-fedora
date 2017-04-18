FROM livingstoneonline/tomcat
MAINTAINER Nigel Banks <nigel.g.banks@gmail.com>

LABEL "License"="GPLv1" \
      "Version"="0.0.1"

ENV FEDORA_HOME=/opt/fedora

RUN apk-install mysql-client && \
    cleanup

# Fedora is installed by this copy.
COPY rootfs /

RUN chown -R tomcat:tomcat ${FEDORA_HOME}

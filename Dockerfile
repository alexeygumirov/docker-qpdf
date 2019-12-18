From alpine:3.10

ARG BUILD_DATE
ARG VCS_REF

ENV QPDF_VERSION="8.4.2"

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="qpdf" \
      org.label-schema.description="qpdf docker container" \
      org.label-schema.url="https://github.com/alexeygumirov/docker-qpdf" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/alexeygumirov/docker-qpdf" \
      org.label-schema.vendor="" \
      org.label-schema.version=$QPDF_VERSION \
      org.label-schema.schema-version="1.0" \
      maintainer="ag_devops@die-optimisten.net"

RUN apk add --update qpdf && \
    rm -rf /var/cache/apk/* && \
    adduser qpdf -D -s /bin/sh

CMD [ "/bin/sh" ]

USER qpdf
WORKDIR /home/qpdf

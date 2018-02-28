FROM debian:stretch
MAINTAINER Christian Pointner <equinox@spreadspace.org>

RUN set -x \
    && echo 'APT::Install-Recommends "false";' >  /etc/apt/apt.conf.d/02no-recommends \
    && echo 'APT::Install-Suggests "false";' >> /etc/apt/apt.conf.d/02no-recommends \
    && apt-get update -q \
    && apt-get upgrade -y -q \
    && apt-get install -y -q gunicorn3 qgraphite-api \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV TINI_VERSION v0.16.1
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini-static-muslc-amd64 /tini
RUN chmod +x /tini

RUN adduser --home /srv --no-create-home --system --uid 998 --group app

COPY "run-api.sh" "/run-api.sh"

ENTRYPOINT ["/tini", "--"]

CMD ["/run-api.sh"]

USER app

FROM base/archlinux
LABEL maintainer Mattias Giese <mattiasgiese@posteo.net>
ARG VERSION=0.10.11

RUN curl -o /caddy.tgz -L \
    "https://github.com/mholt/caddy/releases/download/v${VERSION}/caddy_v${VERSION}_linux_amd64.tar.gz" \
    && tar xzf /caddy.tgz caddy -C / \
    && rm /caddy.tgz

ENTRYPOINT ['/caddy']


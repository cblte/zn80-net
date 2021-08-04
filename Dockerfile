FROM alpine:3.14

LABEL maintainer='info_@_zn80.net'

ENV HUGO_VERSION=0.86.1 \
    HUGO_SITE=/srv/hugo \
    HUGO_BASEURL=http://localhost/ \
    HUGO_ENV=production

RUN apk --no-cache add \
        curl \
        git \
    && curl -SL https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-ARM64.tar.gz \
        -o /tmp/hugo.tar.gz \
    && tar -xzf /tmp/hugo.tar.gz -C /tmp \
    && mv /tmp/hugo /usr/local/bin/ \
    && apk del curl \
    && mkdir -p ${HUGO_SITE} \
    && rm -rf /tmp/*

WORKDIR ${HUGO_SITE}

VOLUME ${HUGO_SITE}

EXPOSE 1313

CMD hugo server \
    --baseURL ${HUGO_BASEURL} \
    --bind 0.0.0.0 \
    --buildDrafts \
    --gc \
    --minify \
    --navigateToChanged \
    --print-mem \
    --templateMetrics \

FROM alpine:3.11 as build

ENV HUGO_VERSION 0.62.0
ENV HUGO_BINARY hugo_${HUGO_VERSION}_Linux-64bit.tar.gz
ARG BASE_URL='http://localhost:8080/'

 
# Install Hugo
RUN set -x && \
apk add --update wget ca-certificates && \
apk add --no-cache bash && \
wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY} && \
tar xzf ${HUGO_BINARY} && \
rm -r ${HUGO_BINARY} && \
mv hugo /usr/bin && \
apk del wget ca-certificates && \
rm /var/cache/apk/*

COPY ./ /site

WORKDIR /site

RUN /usr/bin/hugo -D --baseURL ${BASE_URL}
#RUN /usr/bin/hugo -D

FROM nginx:1.17.6-alpine

COPY --from=build /site/public /usr/share/nginx/html

WORKDIR /usr/share/nginx/html
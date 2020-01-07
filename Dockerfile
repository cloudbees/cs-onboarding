FROM klakegg/hugo:0.61.0
LABEL maintainer="msuarez@cloudbees.com"
EXPOSE 1313
WORKDIR /usr/src/app
COPY . .
CMD ["server"]
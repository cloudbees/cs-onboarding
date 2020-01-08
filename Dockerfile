FROM klakegg/hugo:0.61.0
LABEL maintainer="msuarez@cloudbees.com"
EXPOSE 1313
COPY . /usr/src/app
WORKDIR /usr/src/app
CMD ["server"]
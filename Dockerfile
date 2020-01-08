FROM klakegg/hugo:0.62.0-onbuild as build

FROM nginx
COPY --from=build /onbuild /usr/share/nginx/html
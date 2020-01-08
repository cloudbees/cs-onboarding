FROM klakegg/hugo:0.62.2-onbuild as build

FROM nginx
COPY --from=build /onbuild /usr/share/nginx/html
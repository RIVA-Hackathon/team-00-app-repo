FROM nginx:1.21.1-alpine

COPY website /usr/share/nginx/html
COPY conf/default.conf /etc/nginx/conf.d/default.conf

STOPSIGNAL SIGTERM

CMD [ "nginx", "-g", "daemon off;" ]

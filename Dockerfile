FROM nginx:1.19-alpine
LABEL maintainer="David Sn <divad.nnamtdeis@gmail.com>"

ADD nginx.conf /etc/nginx/nginx.conf
ADD default.conf /etc/nginx/conf.d/default.conf

EXPOSE 22080/tcp
VOLUME ["/resource-cache"]
ENTRYPOINT ["nginx", "-g", "daemon off;"]

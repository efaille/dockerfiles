FROM ghcr.io/efaille/alpine

RUN apk add --no-cache nginx

ADD ./default.conf /etc/nginx/http.d/

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]

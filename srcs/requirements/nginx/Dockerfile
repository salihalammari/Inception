FROM debian:bullseye

RUN apt-get update && apt-get install nginx openssl -y

RUN openssl req -x509 -nodes -out /etc/nginx/slammari.crt -keyout /etc/nginx/slammari.key -subj "/CN=MA"

COPY conf/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
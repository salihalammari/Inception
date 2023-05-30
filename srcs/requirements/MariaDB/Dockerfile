FROM debian:buster

RUN apt-get update && apt-get install mariadb-server -y

COPY ./tools/script.sh .

RUN chmod a+x ./script.sh

ENTRYPOINT [ "./script.sh"]
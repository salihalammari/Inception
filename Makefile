COMPOSE = ./srcs/docker-compose.yml
HOME = /home/slammari/Desktop
up:
	mkdir -p $${HOME}/data $${HOME}/data/mariadb $${HOME}/data/Wordpress
	docker-compose -f ${COMPOSE} up --build

down:
	docker-compose -f ${COMPOSE} down


fclean:
	docker-compose -f ${COMPOSE} down -v --rmi all
	rm -rf  $${HOME}/data $${HOME}/data/mariadb $${HOME}/data/Wordpress

re:
	make fclean
	make all

.PHONY: up re down fclean

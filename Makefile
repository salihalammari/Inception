COMPOSE = ./srcs/docker-compose.yml

up:
	mkdir -p $$HOME/data $$HOME/data/mariadb $$HOME/data/wordpress
	docker-compose -f ${COMPOSE} up --build

down:
	docker-compose -f ${COMPOSE} down


fclean:
	docker-compose -f ${COMPOSE} down -v --rmi all
	rm -rf  $$HOME/data $$HOME/data/mariadb $$HOME/data/wordpress

re:
	make fclean
	make all

.PHONY: up re down fclean

# VOLUME = ./slammari/data
# COMPOSE = srcs/docker-compose.yml

# all: 
# 	@mkdir -p $(VOLUME)
# 	@mkdir -p $(VOLUME)/mariadb
# 	@mkdir -p $(VOLUME)/wordpress
# 	docker-compose -f $(COMPOSE) up --build

# clean:
# 	docker-compose -f $(COMPOSE) down


# fclean:
# 	docker-compose -f $(COMPOSE) down --rmi all
# 	docker volume rm $$(docker volume ls -f dangling=true -q)
# 	@rm -rf ./slammari

# re:
# 	@make fclean
# 	make all

# .PHONY: all re clean fclean


all : 
	sh ./srcs/requirements/tools/script.sh
	docker-compose -f ./srcs/docker-compose.yml  up --build
clean:
	docker-compose -f  ./srcs/docker-compose.yml down
fclean: 
	rm -rf ./data
	docker-compose -f  ./srcs/docker-compose.yml down --rmi all
	docker system prune -af
re:
	@make fclean
	make all

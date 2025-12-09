NAME = inception

all: up

up:
	docker compose -f srcs/docker-compose.yml up --build -d

down:
	docker compose -f srcs/docker-compose.yml down --volumes --remove-orphans

clean: down
	docker system prune -af

fclean: clean
	sudo rm -rf /home/juwang/data/mariadb/*
	sudo rm -rf /home/juwang/data/wordpress/*

re: fclean all

.PHONY: all up down clean fclean re

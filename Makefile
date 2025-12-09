# **************************************************************************** #
#                                   COLORS                                     #
# **************************************************************************** #
RESET		:=	\033[0m
GREEN		:=	\033[32m
YELLOW		:=	\033[33m
BLUE		:=	\033[34m

# **************************************************************************** #
#                                   CONFIG                                      #
# **************************************************************************** #

NAME		:=	inception
COMPOSE		:=	docker compose -f srcs/docker-compose.yml

# Host volumes path
VOLUMES		:=	/home/juwang/data
MARIADB_DIR	:=	$(VOLUMES)/mariadb
WP_DIR		:=	$(VOLUMES)/wordpress

# **************************************************************************** #
#                                   RULES                                       #
# **************************************************************************** #

all: prepare $(NAME)

# Prepare host directories
prepare:
	@echo "$(BLUE)[ Checking and creating host directories... ]$(RESET)"
	@mkdir -p $(MARIADB_DIR) $(WP_DIR)

$(NAME):
	@echo "$(BLUE)[ Building containers... ]$(RESET)"
	@$(COMPOSE) build
	@echo "$(GREEN)[ Starting services... ]$(RESET)"
	@$(COMPOSE) up -d

up: prepare
	@$(COMPOSE) up -d

down:
	@$(COMPOSE) down

clean: down
	@echo "$(YELLOW)[ Removing containers, images, volumes... ]$(RESET)"
	@docker system prune -af --volumes

fclean: clean
	@echo "$(YELLOW)[ Removing volumes directory... ]$(RESET)"
	@sudo rm -rf $(VOLUMES)

re: fclean all

.PHONY: all prepare clean fclean re down up

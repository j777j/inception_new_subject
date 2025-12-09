# Developer Documentation

## Prerequisites
- Docker >= 24.x
- Docker Compose >= 2.x
- GNU Make

## Setup
1. Clone the repository.
2. Copy `.env.example` to `.env` and fill in credentials.
3. Prepare host directories for volumes:
   ```bash
   mkdir -p /home/juwang/data/mariadb /home/juwang/data/wordpress

Makefile Usage

make : build images and start containers.

make up : start services without rebuilding.

make down : stop containers (volumes remain intact).

make clean : remove containers, networks, and volumes.

make fclean : remove volumes on the host, clean everything.

make re : rebuild everything from scratch.

Docker Compose Commands

docker compose up -d : start services in detached mode.

docker compose down : stop services.

docker compose build : build Docker images.

Data Persistence

MariaDB volume: /home/juwang/data/mariadb

WordPress volume: /home/juwang/data/wordpress

These volumes are mapped in docker-compose.yml to ensure data persists across container restarts.



Develop anything ASAP!

The subject changed just before I could submit T-T


⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠤⠖⠒⠉⠉⠁⠀⠀⠀⠀⠀⠉⠉⠁⠒⠢⠄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠴⠊⠁⠀⢀⣠⠤⠒⠒⠋⠉⠉⠉⠉⠉⠑⠒⠒⠤⣀⡀⠀⠉⠒⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠊⠀⢀⡠⠖⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠢⣄⠀⠈⠷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢀⡴⠉⠀⣠⠔⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠢⡀⠁⠑⢤⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⡰⠋⠀⣠⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠢⡀⠘⠳⡄⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⡜⠁⠀⡴⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣄⠀⠘⣆⠀⠀⠀⠀
⠀⠀⠀⠀⡞⠀⠀⡜⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣟⡽⣿⣿⡧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢆⠀⠈⣆⠀⠀⠀
⠀⠀⠀⡼⠀⠀⡜⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡿⣿⡽⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣆⠀⢿⡄⠀⠀
⠀⠀⢰⠇⠀⢸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣷⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡄⠘⣷⠀⠀
⠀⠀⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⣄⡄⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⢹⡇⠀
⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⡿⢿⣿⢿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡇⠀
⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡿⣟⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀
⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣟⣯⣷⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀
⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⢿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡇⠀
⠀⠀⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠼⡀⠀
⣤⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢙⠿⣿⣿⣿⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠤⠤⠤⠚⣉⡆
⣇⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠒⠭⣛⠻⠿⢿⣿⣶⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠷⣶⣶⠶⠽⠟⠁
⠙⣧⣄⡑⠂⠤⠤⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠙⠛⠻⢶⣦⣤⡀⠀⠀⠀⢀⣀⠀⠉⠳⡄⠀⠀
⠀⠈⠙⠻⠷⠶⣶⣦⣌⣳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣤⡤⠤⠤⠤⠶⠶⠿⠛⠃⠀⠀⢰⣧⣤⣤⣶⠿⠃⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠿⠶⠶⠶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣄⡀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣀⡤⠞⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠒⠤⢀⠀
⠀⠀⠀⠀⠀⢰⣃⠐⠦⠤⠤⠄⠀⠠⠤⠤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣵
⠀⠀⠀⠀⠀⠀⠛⠿⠶⠦⠶⠶⠶⠶⢶⣂⡤⣤⡉⠉⠀⠐⠒⠒⠒⠒⠒⠒⠒⠒⠀⠀⠉⠉⢉⣀⠀⡉⠉⠉⠀⠐⠒⠤⠤⠀⠀⠄⢀⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠛⠛⠛⠳⠶⠶⠶⠶⠶⠶⠿⠚⠚⠛⠓⠀⠀⠀⠀⠈⠛⠛⠓⠶⣶⣶⣤⣤⣶⡾⠋

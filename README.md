# inception_new_subject T-T

*This project was created by <juwang> as part of the 42 curriculum.*

# Inception Project

## Description
This project sets up a small web infrastructure using Docker and Docker Compose.
It includes the following services:
- **NGINX** with TLSv1.2 or TLSv1.3 for HTTPS access.
- **WordPress** + PHP-FPM without NGINX.
- **MariaDB** database for WordPress.
- **Adminer** (bonus) for database management.
- Dedicated volumes are used for WordPress files and database persistence.
- All services are connected via a custom Docker network.

## Instructions
1. Clone the repository.
2. Ensure `.env` file is configured with your credentials.
3. Run `make` to build and start all services.
4. Access your WordPress site at `https://<your-domain>` (e.g., `https://juwang.42.fr`).
5. Access Adminer at `http://<your-vm-ip>:8080` for database management.

## Resources
- **Docker**: containerization technology for lightweight virtual environments.
- **Docker Compose**: orchestrates multiple containers and networks.
- **WordPress**: CMS used for the website.
- **MariaDB**: MySQL-compatible database.
- **Adminer**: web-based database management tool.
- **AI Usage**: Trouble shooting is tough work.




Thanks very much for your time and for going through this with me!

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

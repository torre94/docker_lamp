# docker_lamp

A complete container stack to runs web application that use PHP and a MySQL database.

## Usage

Put your app or website into *src* and run `docker-compose up -d`.
You app will be visible at [localhost](localhost).  
PhpMyAdmis will be visible at [localhost:8000](localhost:8000).  

## Customization

This project born with the idea to be a customizable tool.
The stack starts 3 container by default:
- Apache2/PHP
- MySQL
- phpMyadmin

**Why PHP and Apache in the same container?**  
Best practices recommend using a container for each service. In this case I preferred to merge PHP and Apache in one container because most of the time you don't need mysql. This way you can run web applications in a single container.

### PHP version
Change `FROM` in *apache2.Dockerfile*.

### PHP ZIP extension
Uncomment the right commands in *apache2.Dockerfile* according to the PHP version.

### php.ini
Custom values can be set from *apache2.Dockerfile*. By default there are some customization.

### Source

By default app files are stored in *src* folder as a Docker volume.  
Alternatively you can copy the application files with `COPY` in *apache2.Dockerfile*.

### Run over HTTPS

Enable relative commands in **apache2.Dockerfile**.  
Make sure associate the port 443 of the container to a port of the host in **docker-compose.yml**.

### MySQL

If you don't need MySQL, remove *mysql* service (and *phpmyadmin*) from *docker-compose.yml*.

### MySQL credential

Set `MYSQL_ROOT_PASSWORD` in *docker-compose.yml*.
`MYSQL_USER`, `MYSQL_PASSWORD` are optionals.

### Database storage

MySQL data are stored into *db_data* folder as a Docker volume

Alternatively use `COPY` command in *mysql.Dockerfile* to run custom SQL instructions after the container starts. In this case it's recommended the set `MYSQL_DATABASE` in *docker-compose.yml*.

### phpMyAdmin

phpMyAdmin is recommended if you intend to use the MySQL database.  
To remove it, delete *phpmyadmin* service from *docker-compose.yml*.
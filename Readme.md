Based on: https://github.com/orchardup/docker-mysql

MYSQL_ROOT_PASSWORD: The password for the root user, set every time the server starts. Defaults to a blank password, which is handy for development, but you should set this to something in production.
MYSQL_DATABASE: A database to automatically create if it doesn't exist. If not provided, does not create a database.
MYSQL_USER: A user to create that has access to the database specified by MYSQL_DATABASE.
MYSQL_PASSWORD: The password for MYSQL_USER. Defaults to a blank password.
MYSQLD_ARGS: extra parameters to pass to the mysqld process
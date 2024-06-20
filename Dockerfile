FROM mariadb:11

ENV MARIADB_DATABASE=guestbook
ENV MARIADB_USER=guestuser
ENV MARIADB_PASSWORD=guestpassword
ENV DB_HOST = ariadb-server

COPY ./init_db.sql /docker-entrypoint-initdb.d/init_db.sql 

VOLUME /var/lib/mysql

EXPOSE 3306
#!/bin/bash

HOST="localhost"
PORT="3306"
USER="root"
PASSWORD="qaz#123"
DATABASE="mysql_tutorials"

QUERY="select * from students"

mysql -h "$HOST" -P "$PORT" -u "$USER" -p"$PASSWORD" -D "$DATABASE" -e "$QUERY"

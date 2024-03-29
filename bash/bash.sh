#!/bin/bash

HOST="YOUR_HOST_NAME"
PORT="3306"
USER="YOUR_USERNAME"
PASSWORD="YOUR_PASSWORD"
DATABASE="YOUR_DATABASE_NAME"

QUERY="select * from students"

mysql -h "$HOST" -P "$PORT" -u "$USER" -p"$PASSWORD" -D "$DATABASE" -e "$QUERY"

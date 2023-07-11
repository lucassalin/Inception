#!/bin/bash

if [ ! -f /etc/ssl/certs/nginx.crt ]; then
echo "Nginx: setting up ssl ...";

openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=lsalin.42.fr/UID=lsalin";
echo "Nginx: ssl is set up!";
fi

exec "$@"
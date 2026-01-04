#!/bin/bash

#Installing dependencies
apt update
apt install -y curl
apt install -y apache2
#systemctl status apache2
#systemctl enable apache2
rm -rf /var/lib/apt/lists/*

#creating our Hello World!
mkdir -p /var/www/html/ && echo '<h1>Hello World from Bind Mount! ;) </h1>' > /var/www/html/index.html

echo "=================================="
echo "Servidor rodando!"
echo "$test1"
echo "Acesse: http://localhost:80"
echo "=================================="

apache2ctl -D FOREGROUND #listening to port 80 by default
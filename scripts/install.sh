#!/bin/bash

echo "Instalando Nginx..."
sudo apt update
sudo apt install nginx -y

echo "Criando diretório do site..."
sudo mkdir -p /var/www/sportmax
sudo cp -r website/* /var/www/sportmax/

echo "Configurando permissões..."
sudo chown -R $USER:$USER /var/www/sportmax
sudo chmod -R 755 /var/www/sportmax

echo "Configurando virtual host..."
sudo cp nginx/site.conf /etc/nginx/sites-available/sportmax
sudo ln -s /etc/nginx/sites-available/sportmax /etc/nginx/sites-enabled/

sudo rm -f /etc/nginx/sites-enabled/default

sudo nginx -t
sudo systemctl restart nginx
sudo systemctl enable nginx

echo "Deploy concluído!"
echo "Acesse: http://localhost"
#!/bin/bash

# Install Paperwork

mkdir -p /var/www/html && cd /var/www/html
git clone https://github.com/twostairs/paperwork.git
cd /var/www/html/paperwork/frontend
curl -sS https://getcomposer.org/installer | php
php composer.phar install

mysql -e "DROP DATABASE IF EXISTS paperwork"
mysql -e "CREATE DATABASE IF NOT EXISTS paperwork DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci"
mysql -e "GRANT ALL PRIVILEGES ON paperwork.* TO 'paperwork'@'localhost' IDENTIFIED BY 'paperwork' WITH GRANT OPTION"
mysql -e "FLUSH PRIVILEGES"

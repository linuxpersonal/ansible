#!/bin/bash

mysql -e "CREATE DATABASE IF NOT EXISTS postfixadmin"
mysql -e "GRANT ALL PRIVILEGES ON postfixadmin.* TO 'postfixadmin'@'localhost' IDENTIFIED BY 'mysqlpass123!!'"
mysql -e "FLUSH PRIVILEGES"

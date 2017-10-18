#!/bin/bash

mysql -p "mysqlpass123!!" -e "CREATE DATABASE postfixadmin"
mysql -p "mysqlpass123!!" -e "GRANT ALL PRIVILEGES ON postfixadmin.* TO 'postfixadmin'@'localhost' IDENTIFIED BY 'mysqlpassword123!!'"
mysql -p "mysqlpass123!!" -e "FLUSH PRIVILEGES"

#!/bin/bash
service mysql start
mysql -uroot -e "CREATE DATABASE  ${database};"
mysql -uroot -e "CREATE USER '${username}'@'localhost' IDENTIFIED BY '${password}';"
mysql -uroot -e "GRANT ALL PRIVILEGES ON ${database}.* TO '${username}'@'localhost' WITH GRANT OPTION;"
service mysql stop

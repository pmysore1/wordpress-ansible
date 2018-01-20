#!/bin/bash
ROLES=~/wordpress-ansible/roles
MYSQLDEFAULT_YML=$ROLES/mysql/defaults/main.yml.param
NEW_MYSQLDEFAULT_YML=$ROLES/mysql/defaults/main.yml

SERVERDEFAULT_YML=$ROLES/server/defaults/main.yml.param
NEW_SERVERDEFAULT_YML=$ROLES/server/defaults/main.yml

NEW_WP_MYSQL_DB=new_wordpress
NEW_WP_MYSQL_USER=new_wordpress_user
NEW_WP_MYSQL_PASSWORD=new_wordpress_pass
NEW_MY_SQL_ROOT_PASSWORD=root_password

sed -e "s;%WP_MYSQL_DB%;$NEW_WP_MYSQL_DB;g" -e "s;%WP_MYSQL_USER%;$NEW_WP_MYSQL_USER;g" -e "s;%WP_MYSQL_PASSWORD%;$NEW_WP_MYSQL_PASSWORD;g" $MYSQLDEFAULT_YML > $NEW_MYSQLDEFAULT_YML

sed -e "s;%MY_SQL_ROOT_PASSWORD%;$NEW_MY_SQL_ROOT_PASSWORD;g" $SERVERDEFAULT_YML > $NEW_SERVERDEFAULT_YML 

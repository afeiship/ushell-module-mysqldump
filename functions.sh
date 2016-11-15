#!/usr/bin/env bash

function usm_mysql_read_parameters() {

  echo "Your db user:";
  read mysql_user;

  echo "Your db password:";
  read mysql_password;

  echo "Your db name:";
  read db_name;

  echo "Your export path(eg:/var/tmp)[without slash]:";
  read dist_path;


  DIST_FILENAME=$dist_path/$db_name-$(date +%Y%m%d).sql;

}

function usm_mysql_export_structure() {
  usm_mysql_read_parameters;
  mysqldump -u $mysql_user -p$mysql_password --no-data $db_name > $DIST_FILENAME;
}

function usm_mysql_export_data() {
  usm_mysql_read_parameters;
  mysqldump -u $mysql_user -p$mysql_password --no-create-info $db_name > $DIST_FILENAME;
}

function usm_mysql_export_all() {
  usm_mysql_read_parameters;
  mysqldump -u $mysql_user -p$mysql_password $db_name > $DIST_FILENAME;
}

#!/usr/bin/env bash

## path:
ROOT_PATH=$(dirname $BASH_SOURCE);

source $ROOT_PATH/functions.sh;

alias usm_exportdb_structure='usm_mysql_export_structure';
alias usm_exportdb_data='usm_mysql_export_data';
alias usm_exportdb_all='usm_mysql_export_all';

unset ROOT_PATH;

#!/bin/bash
action=$1
user_input_1=$2
user_input_2=$3

source ./practice.sh
case $action in
addDir) add_directory $user_input_1 $user_input_2;;
deleteDir) delete_directory $user_input_1 $user_input_2;;
listFiles) list_files ;;
listDirs) list_directory ;;
*) echo "thenga"
esac




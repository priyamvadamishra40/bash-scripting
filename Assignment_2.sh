#!/bin/bash
**** This script is to practicise basic linux commands ****

***** create a utility that will be able to perform below functions ****
echo "Choose an option"
echo "1)create new directory"
echo "2)delete a directory"
echo "3)list content of directory"

read_input () {
  read -p "Enter your choice (1-3) :" choice

 if [[ $choice -eq 1 ]]
 then
   read -p "Enter the directory name you want to create : " dir1
 fi

if [[ $choice -eq 2 ]]
then
  read -p "Enter the directory name you want to delete : " dir2
  if [[ -d $dir2 ]]
  then
    echo "Directory exists. I'll delete for you."
  else
    echo "Directory doesn't exist. Please give valid directory name." ; ls ; echo "you can chose from here."
    read -p "Enter the directory name you want to delete : " dir2
  fi
fi

if [[ $choice -eq 3 ]]
then
 echo "choose option: i.e"
 echo "a) only list files in a directory"
 echo "b)only list folders in a directory"
 echo "c) list all (files & dir)"
 if [[ a ]]
 then
   echo "ls | grep -v /"
 elif [[ b ]]
 then
  echo "ls | grep /"
 elif [[ c ]]
 then
  echo "ls"
  fi
fi

case $choice in

1) mkdir $dir1
  ;;

2) rm -rf $dir1
  ;;

3) ls
  ;;

esac
}

read_input
exit 0
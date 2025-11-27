#!/bin/bash
**** This script is to choose menu ****

echo "Choose an option"
echo "list all files"
echo "show present working directory"
echo "create new directory"
echo "create new files"
echo "remove directory"
echo " remove file"


read_input () {
  read -p "Enter your choice (1-6) :" choice

if [[ $choice -eq 3 ]]
then
  read -p "Enter the directory name you want to create : " dir1
fi

if [[ $choice -eq 4 ]]
then
  read -p "Enter the file name you want to create : " file1
fi

if [[ $choice -eq 5 ]]
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

if [[ $choice -eq 6 ]]
then
  read -p "Enter the file name you want to delete : " file2
   if [[ -d $file2 ]]
    then
      echo "File exists. I'll delete for you."
    else
      echo "File doesn't exist. Please give valid file name." ; ls ; echo "you can chose from here."
      read -p "Enter the file name you want to delete : " file2
    fi
fi


case $choice in

1) ls -lhrt
  ;;
2) pwd
  ;;
3)  mkdir $dir1; ls
  ;;
4) touch $file1; ls
  ;;
5) rm -rf $dir2; ls
  ;;
6) rm $file2; ls
  ;;
*) echo "Invalid user. Please choose option 1-5:"; read_input

esac
}

read_input
exit 0
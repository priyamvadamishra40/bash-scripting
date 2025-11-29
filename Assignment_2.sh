#!/bin/bash
#set -x

echo "Choose an option"
echo "1)create new directory"
echo "2)delete a directory"
echo "3)list content of directory"

##**** update file manager to process files as well****

echo "4) create a file"
echo "5) Add content to file"
echo "6) add content at the beginning of the file"
echo "7) show top n lines of a file"
echo "8) show last n lines of a file"
echo "9) show content of a specific line no."
echo "10) show content of a specific line number range"
echo "11) move/copy file from one location to another"
echo "12) delete file"


read_input () {
  read -p "Enter your choice (1-12) :" choice

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
    echo "Directory doesn't exist. Please give valid directory name." ; ls |grep /; echo "you can chose from here."
    read -p "Enter the directory name you want to delete : " dir2
  fi
fi

case $choice in

1) mkdir $dir1
  ;;

2) rm -rf $dir2
  ;;

3)
   echo "choose option: i.e"
   echo "a) only list files in a directory"
   echo "b)only list folders in a directory"
   echo "c) list all (files & dir)"

   read -p "Enter your choice (a-c) :" user_input

   if [[ $user_input == "a" ]]
   then
     ls | grep -v /
   elif [[ $user_input == "b" ]]
   then
    ls | grep /
   elif [[ $user_input == "c" ]]
   then
    ls
    fi
  ;;
*)
;;
esac

if [[ $choice -eq 4 ]]
 then
   read -p "Enter the file name you want to create : " file1
fi

if [[ $choice -eq 5 ]]
  then
    read -p "Enter the file name in which you want to add content : " file1
fi

 if [[ $choice -eq 6 ]]
   then
     read -p "Enter the file name in which you want to add content at the beginning: " file1
  fi

  if [[ $choice -eq 7 ]]
    then
      read -p "Enter the no. of lines and name of file : " n file1
  fi

  if [[ $choice -eq 8 ]]
      then
        read -p "Enter the no. of lines and name of file : " n file1
  fi

  if [[ $choice -eq 9 ]]
      then
        read -p "Enter the no. of line and name of file which content you want to display : " n file1
  fi

if [[ $choice -eq 10 ]]
      then
        read -p "Enter the no. of line range and name of file which content you want to display : " n1 file1 n2
  fi

if [[ $choice -eq 11 ]]
      then
        read -p "Enter the file name source & destination : "  file1 source destination
  fi

if [[ $choice -eq 12 ]]
      then
        read -p "Enter the file name you want to delete : " file1
  fi


case $choice in
4) touch $file1
  ;;

5) echo "this is the first line added to file1." >> $file1; cat $file1
  ;;

6) { echo -n 'This is the new line added in the beginning.'; cat $file1; } >> file.new && mv file.new $file1
  ;;

7) head -n $n $file1
  ;;

8) tail -n $n $file1
  ;;

9) head -$n $file1 | tail +$n
  ;;

10) head -$n2 $file1 | tail +$n1
  ;;

11) mv $source/$file1 $destination ; ls -l $destination
  ;;

12) rm $file1
  ;;
*)
  ;;
esac
}

read_input

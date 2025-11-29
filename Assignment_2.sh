#!/bin/bash
#set -x

echo "Choose an option"
echo "1)create new directory"
echo "2)delete a directory"
echo "3)list content of directory"
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
  read -p "Enter your choice (1-12) :" choice file1

if [[ $choice -eq 7 || $choice -eq 8 || $choice -eq 9 ]]
    then
      read -p "Enter the no. of lines : " n
  fi

if [[ $choice -eq 10 ]]
      then
        read -p "Enter the no. of line range which content you want to display : " n1 n2
  fi

if [[ $choice -eq 11 ]]
      then
        read -p "Enter the file name source & destination : "  source destination
  fi

case $choice in

1) mkdir $file1
  ;;

2) rm -rf $file1
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

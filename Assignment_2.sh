#!/bin/bash
**** This script is to practicise basic linux commands ****

***** create a utility that will be able to perform below functions ****
echo "Choose an option"
echo "1)create new directory"
echo "2)delete a directory"
echo "3)list content of directory"

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

read_input

**** update file manager to process files as well****

echo "4) create a file"
echo "5) Add content to file"
echo "6) add content at the beginning of the file"
echo "7) show top n lines of a file"
echo "8) show last n lines of a file"
echo "9) show content of a specific line no."
echo "10) show content of a specific line number range"
echo "11) move/copy file from one location to another"
echo "12) delete file"

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
     read -p "Enter the file name in which you want to add content : " file1
   fi

  if [[ $choice -eq 7 ]]
    then
      read -p "Enter the no. of lines and name of file : " n file1
    fi

  if [[ $choice -eq 8 ]]
      then
        read -p "Enter the no. of lines and name of file : " n file1
      fi




case $choice in

4) touch $file1
  ;;

5) echo "this is the first line added to file1." >> $file1
  ;;

6) { echo 'This is the new line added in the beginning.'; cat $file1; } > temp && mv temp $file1
  ;;

7) head - n $n $file1
  ;;

8) tail - n $n $file1
  ;;

9)
  ;;

10)
  ;;

11) mv $file $source $Destination
  ;;

12) rm $file1
  ;;


}
exit 0
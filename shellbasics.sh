#! /usr/local/bin/bash

#echo "hello world"
#
#echo shell name is $BASH
#echo shell version is $BASH_VERSION
# echo home dr is $HOME
#echo current working dr is $PWD

#name=Murat
#age=31
#echo The name is $name and he is $age years old


# name=Murat
# echo The name is $name
# echo "new new new"

# VALUE=10

# echo value $VALUE

#echo What is your name?
#read name
#echo Hi $name
#sleep 2
#echo How old are you?
#read age
#sleep 2
#echo $name you are $age years old


#echo who are they?
#read n1 n2 n3
#echo They are $n1 $n2 $n3


#echo "Enter name : "
#read name1 name2 name3
#echo "Entered names are : $name1, $name2, $name3"

# -p enable user to enter value on the same line. something like " username" needs to be defined for -p
# -p is used with read command
# -s makes the entered value not shown, good for passwords
# read -p "username: " user_var
# read -sp "password: " pass_var
# echo "your username is : $user_var"
#  echo "your password is : $pass_var"


# echo "enter names :"
# read -a names   # -a array
# echo "names : ${names[0]}, ${names[1]}"  # print elements in array
# echo "${names[@]}"  # print whole array

#echo "enter names:"
#read
# echo "Name : $REPLY"  # input read

#echo $0 $1 $2 $3 # ' > echo $1 $2 $3'  # enter the values and will be assigned to coresponding
#echo $0 $1 $2 $3 '> echo $1 $2 $3'


#args=("$@")
#echo $@  # print all arguments passed in
# echo ${args[0]} ${args[1]} ${args[2]}

#read
#echo $REPLY  # print complete input

#echo $#  # print number of arguments passed in

#count=10
#while (( $count > 0 ))
#do
#    echo $count
#    count=$(( count-1 ))
#done


#a=-1
#if (( a > 0 ))
#then
#    a=$((a+1))
#    echo $a
#else a=$(( a-1 ))
#    echo $a
#fi


# count=10
# if [ $count -gt 9 ]
# then
#     echo "condition true"
# fi  # end if



# word=abc
# if [[ $word == "abcdd" ]]
# then
#     echo "condition true"
#     elif [[ $word == "abc" ]]
#     then 
#     echo "it is second"
#     else
#     echo "condition is false"
# fi  # end if


#echo -e "enter the name of the file : \c"  # -e .... \c keeps the curser on the same line
#read filename

#if [ -e $filename ]
#then echo "$filename found"
#else echo "$filename not found"
#fi

# -e file exist or not
# -f file exist and regular file or not
# -d directory exist or not
# -b block special
# -c character special
# -s check whether file empty or not
#-r check for file has read permission
#-w check for file has read permission

# echo -e "enter the name of the file : \c"
# read file_name

# if [ -e $file_name ]
# then 
# echo "$file_name found"
# else 
# echo "$file_name not found"
# fi


# echo -e "enter the name of the file : \c"
# read file_name

# if [ -f $file_name ]
# then 
# echo "$file_name found"
# else 
# echo "$file_name not found"
# fi


# echo -e "enter the name of the file : \c"
# read file_name

# if [ -e $file_name ]  # b for block special file
#                       #c for character special file
#                       # -s check for file empty or not
#                       #-r check for file has read permission
#                       #-w check for file has read permission

# then 
# echo "$file_name found"
# else 
# echo "$file_name not found"
# fi


# echo -e "enter the name of the file : \c"
# read file_name

# if [ -f $file_name ]
# then 
#     if [ -w $file_name ]
#     then echo " type some text data. To quit press ctrl+d. "
#     cat >> $file_name
#     else echo "file do not have write permisssion"
#     fi
# else 
# echo "$file_name  not exist"
# fi

# cat >> hi


#read -p "what is your age?" age
#if [ "$age" -gt 18 ] || [ "$age" -le 90 ]
#then echo it is a valid age
#fi


# age=50
# if [ "$age" -gt 18 ] && [ "$age" -lt 30 ] 
#       # instead of &&  you can put -a
#       #[[ "$age" -gt 18 && "$age" -lt 30 ]] 
# then echo "valid age"
# else echo "age not valid"
# fi


# || # or


#echo  "scale=2; sqrt(2+4)"  | bc -l  # bc is the an arbitrary precision calculator language,  -l is math library
#num1=20
# num2=5

# echo $(( num1 + num2 ))
# echo $( expr $num1 + $num2 )
# echo $(( num1 * num2 ))
# echo $( expr $num1 \* $num2 )

#echo "20.5+5" | bc
# echo $num1+$num2 | bc
# echo "scale=2 ; $num1/$num2" | bc

#echo "scale=2; sqrt(9)" | bc -l




#vehicle=$1 # first argument will be vehicle
# echo -e "which car you are looking for? : \c"
# read vehicle
# case $vehicle in

# "car" )
# echo "Rent is 100$ for $vehicle" ;;
# "van" )
# echo "Rent is 200$ for $vehicle" ;;

# * ) echo "unknown vehicle" ;;
# esac





# regex  regular expressions
# echo -e "which car you are looking for? : \c"
# read vehicle
# case $vehicle in

# [a-z] )
# echo "a-z for $vehicle" ;;
# [A-Z] )
# echo "A-Z for $vehicle" ;;
# [0-9] )
# echo "0-9 for $vehicle" ;;
# ? )
# echo "special charachter for $vehicle" ;;
# * ) 
# echo "unknown vehicle" ;;
# esac






#arrays
# os=('ubuntu' 'windows' 'kali')
# os[3]='mac'  #add/replace element to array
# unset os[2]  #remove the element from array
# echo "${os[@]}"  #print array
# echo "${os[1]}"
# echo "${!os[@]}"   # print the indexes of the array
# echo "${#os[@]}"   #print the length of the array
# string=muratmurat
# echo "${string[@]}"
# echo "${string[0]}"  # string is array at the 0th index
# echo "${string[1]}"
# echo "${#string[@]}"  #print the length of the array



# while loops
# a=1
# while [ $a -le 10 ] # (( $a <= 10 ))
# do
# echo "$a"
# #a=$(( a+1 ))
# (( a++ ))
# done


# n=1
# while [ $n -le 3 ] # (( $n <= 10 ))
# do
# echo "$n"
# #a=$(( a+1 ))
# (( n++ ))
# sleep 1 #print each number in 1 sec
# done



# n=1
# while [ $n -le 3 ] # (( $n <= 10 ))
# do
# echo "$n"
# #a=$(( a+1 ))
# (( n++ ))
#  xterm &  # gnome-terminal
# sleep 1 #print each number in 1 sec

# done



#print the content of the script, read the files
# while read p
# do 
#     echo $p
# done < hello.sh


# cat hello.sh | while read p
# do 
#     echo $p
# done


# while IFS= read -r p  # IFS=' '   same
# do 
#     echo $p
# done < hello.sh


# while IFS= read -r p  # IFS=' '   same
# do 
#     echo $p
# done < /etc/master.passwd


# cat /etc/master.passwd    write on terminal and get same result






#until loop
# n=1
# until [ $n -ge 10  ]  # if the condition is false do will executed
#      # (( $n > 10 ))
# do
# echo $n
# (( n++ ))  # n=$(( n+1 ))
# done



#for loops
# for a in 1 2 3 4 5  # {1..5}
# do
#     echo $a
# done


# for a in {1..10..2}  # {start value..end value..increment value}
# do
# echo $a
# done

# echo ${BASH_VERSION}


# for (( i=0; i<10; i=i+2 ))
# do
#     echo $i
# done



# for a in ls pwd date
# do
# echo "------------$a-------------"
# $a
# done


# for a in *
# do
#     if [ -d $a ]
#     then
#         echo "$a is a directory"
#     fi
# done




# select name in mark john tom ben 
# do
#     echo "$name selected"
# done



# select name in mark john tom ben 
# do
#     case $name in
#     mark )
#     echo "$name selected" ;;
#      john )
#     echo "$name selected" ;;
#      tom )
#     echo "$name selected" ;;
#      ben )
#     echo "$name selected" ;;
#      * )
#     echo "error please provide the number 1 to 4" ;;
#     esac
# done




# for (( i=1; i<10; i=i+2 ))
# do
#     if [ $i -gt 5 ]
#     then
#         break
#     fi
#     echo $i
# done



# for (( i=1; i<10; i=i+2 ))
# do
#     if [ $i -eq 3 -o $i -eq 7 ]
#     then
#         continue
#     fi
#     echo $i
# done




#functions
# function add(a,b){
#     $c=$a+$b
#     echo $c
# }

# add(2,3)


# function hello(){
#     echo "Hello world"
#     echo $1 $2 $3  # print first second and third argument
#     echo $@ # print all arguments
# }

# quit(){   # another way of making a function
#     exit
# }

# hello wwwww sf sdf sdf rere sdfg
# quit




# local variables
# function print(){
#     local name=$1
#     echo "the name is $name"
# }

# name="tom"
# echo "the name is $name"

# print Max
# echo "the name is $name"






# usage(){
#     echo "you need to provide an argument:"
#     echo "usage : $0 file_name"
# }

# is_file_exit(){
#     local file="$1"
#     [[ -f "$file" ]] && return 0 || return 1
#     # if file exist return 1, otherwise return 0
# }

# [[ $# -eq 0 ]] && usage # check the argument passed or not

# if ( is_file_exit "$1")
# then
#     echo "File found"
# else
#     echo "File not found"
# fi





# # read only command
# var=31
# readonly var
# var=50
# echo "var = $var"

# hello(){
#     echo "hello"
# }
# readonly -f hello  #make function read only
# readonly -f # see readonly functions

# hello(){
#     echo "hello sdfsdf "
# }




 # Signals and Traps

# trap "echo Exit command is detected" SIGINT
# trap "echo Exit command is detected" 0
# # trap CAN NOT catch SIGKILL or SIGSTOP, do not try to catch them

# echo "pid is $$"  # $$ give you the pid
#  while (( count < 10 ))
# do
#      sleep 1
#     (( count ++ ))
#     echo $count
# done
# exit 0

# several ways to kill process on terminal
# ctrl + c
# ctrl + Z
# kill -9 (pid #)


# trap "echo Exit command is detected" 0
# echo "hi"
# exit 0



# file=/Users/muratyalcin/Desktop/file1.txt
# trap "rm -f $file && echo file deleted; exit" 0 2 15
# # delete the file when catch the exit 0 2 15

# echo "pid is $$"  # $$ give you the pid
#  while (( count < 10 ))
# do
#      sleep 1
#     (( count ++ ))
#     echo $count
# done
# exit 0

# # terminal kill -15 (pid #)
# # remove trap  on terminal   trap - 0 2 15





# debug shell script
# type (bash -x ./hello.sh) on terminal for debugging
# set -x start debugging inside script
# set +x end debugging inside script



## PIPE
#ls -lt | head  # list the directories and take first 10
#ls -t | head   # same
#ls -lt | head -n 11  # same

#find . -type f -print | wc -l  # find the files, count them with pipe and print it

#find . -type f -print | wc -l > ~/Desktop/ttest.txt  # now write result to desktop

#ls | tee ls.txt | grep mu   # copy files and save them in ls.txt, highlights the ones include "mu"


#echo "log name is : $LOGNAME"  # get the log name
#echo $(date)  # get the date
#echo "you are : $(who i am)"  # get the who i am
#echo $PWD  # get the current directory

#echo "4*a(1)" | bc -l # get the pi value
#echo "scale=6 ; 355/113" | bc -l  # get pi value

#chmod +r +x hi.txt
#cat hi.txt

#chmod +x hi.sh
#cat hi.sh

#env   # display shell environment variables

echo $BASH_VERSION








































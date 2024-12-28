#!/bin/bash
#Author: Vibish
#Date_Created: 
#Date_modified:
#Usage:
#Description:


#variables
a=10
b=20
student=vibish
name="VibiShNaTHaN"
list=[1,2,3,4,5,6]
mlist=["vibi","Hi",'nathan',5,6]
set={1,2,3,4}
dict={name:"vibish",age:24,gender:"male"}






#Arthematic Expansions
: '
rder of precedence is with the acronym PEMDAS, 
which stands for parentheses, 
exponents, multiplication, division, 
addition, and subtraction
'


exit 0


#Parameters Expansions
echo ${name} #prints variable
echo ${name,} #Pritns first char small
echo ${name^} #prints first caps
echo ${#name} #Print total length
echo ${name,,} # Prints all char small
echo ${name^^} # prints all char caps

echo ${name:0:5} # prints o to 5 char
echo ${name:3} # prints all after 3 char
echo ${name:3:} # prints none as we have : bash takes as 0
echo ${name: -5:2} # prints in reverse space is nessary
echo ${name: -3} # prints last 3 char

#commands substituion
echo $(date +%d-%m-%Y_%H-%M-%S)
echo $(hostname)

echo $student

#expr
if [ $(expr $a \> $b) -eq 1 ]; then 
    echo $a is greater than $b
else
    echo $b is greater than $a
fi





: '
This is a multi-line comment.
It spans multiple lines.
You can use this anywhere in the script.
'
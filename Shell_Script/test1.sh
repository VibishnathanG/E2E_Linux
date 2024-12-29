#!/bin/bash
#Author: Vibish
#Date_Created: 
#Date_modified:
#Usage:
#Description:


#variables
# read -p "Enter the a value: " a
# a=1
b=2
student=vibish
name="VibiShNaTHaN"
list=( 1 2 3 4 5 6 )
# mlist=["vibi","Hi",'nathan',5,6]
set={1,2,3,4}
dict={name:"vibish",age:24,gender:"male"}


#Read-While

line_num=0
while read line; do
    line_num=$(( $line_num + 1 ))
    echo "$line ---> This is line Number $line_num"
done < sample

exit 0

#While getopts
while getopts "c:f:" opt; do
case "$opt" in
    c) result= echo $((($OPTARG * (9/5)) + 32 ));;
    f) result= echo $((($OPTARG - 32) * (5/9) ));;
    ?);;
esac
done
printf result
exit 0

#Case
case "$a" in
    "") echo "You didnt entered anything";;
    [0-9]) echo "You have entered number between 0 and 9";;
    [a-z]) echo "You have entered apha";;
    *) echo "You entered other";; 
esac



exit 0

if [ $a -ne $b ]; then
echo $a is not equal to $b
else
echo $a is equal to $b
fi

exit 0




select day in "${list[@]}"
do 
echo $day
break
done

exit 0

#special parameters


if [ $# -ne 2 ]; then
    echo "Please provide 2 args"
    echo "Usage : #0 need 2 args"
    exit 1
fi
exit 0

# Sample text
text="Hello World! 123"

# [:alpha:] - All letters (upper and lowercase)
echo "Alpha: $(echo "$text" | grep -o '[[:alpha:]]')"

# [:alnum:] - All letters and numbers
echo "Alnum: $(echo "$text" | grep -o '[[:alnum:]]')"

# [:lower:] - Lowercase letters
echo "Lower: $(echo "$text" | grep -o '[[:lower:]]')"

# [:punct:] - Punctuation characters
echo "Punct: $(echo "$text" | grep -o '[[:punct:]]')"

# [:upper:] - Uppercase letters
echo "Upper: $(echo "$text" | grep -o '[[:upper:]]')"

# [:space:] - Whitespace characters
echo "Space: $(echo "$text" | grep -o '[[:space:]]' | tr -d '\n')"

# [:digit:] - Numbers
echo "Digit: $(echo "$text" | grep -o '[[:digit:]]')"

# [:word:] - All letters and numbers (equivalent to [:alnum:])
echo "Word: $(echo "$text" | grep -o '[[:alnum:]]')"


#sample with Sed

# [:alpha:] - All letters (upper and lowercase) 
echo "Alpha: $(echo "$text" | sed 's/[^[:alpha:]]//g')" 
# [:alnum:] - All letters and numbers 
echo "Alnum: $(echo "$text" | sed 's/[^[:alnum:]]//g')"


#sample with awk

# [:alpha:] - All letters (upper and lowercase) 
echo "Alpha: $(echo "$text" | awk '{gsub(/[^[:alpha:]]/, ""); print}')" 
# [:alnum:] - All letters and numbers 
echo "Alnum: $(echo "$text" | awk '{gsub(/[^[:alnum:]]/, ""); print}')"


#Arthematic Expansions
: '
rder of precedence is with the acronym PEMDAS, 
which stands for parentheses, 
exponents, multiplication, division, 
addition, and subtraction
'

echo $(( $a + $b * $b / $a ** $b % $a))


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










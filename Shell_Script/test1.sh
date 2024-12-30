#!/bin/bash
#Author: Vibish
#Date_Created: 
#Date_modified:
#Usage:
#Description:


#variables
# read -p "Enter the a value: " a
a=1
b=2
student=vibish
name="VibiShNaTHaN"
list=( 1 2 3 4 5 6 )
# mlist=["vibi","Hi",'nathan',5,6]
set={1,2,3,4}
dict={name:"vibish",age:24,gender:"male"}



exit 0

# Crontab examples
echo "Crontab Examples:"
echo "0 2 * * * /path/to/script.sh  # Daily at 2 AM"
echo "0 16 * * 1 /path/to/script.sh  # Every Monday at 4 PM"
echo "0 0 1 * * /path/to/script.sh  # 1st of every month at midnight"
echo "*/5 * * * * /path/to/script.sh  # Every 5 minutes"
echo "0 * * * * /path/to/script.sh  # Every hour"
echo "0 18 * * * /path/to/script.sh  # Daily at 6 PM"
echo "0 8 * * 1-5 /path/to/script.sh  # Every weekday at 8 AM"
echo "0 22 15 * * /path/to/script.sh  # 15th of every month at 10 PM"
echo "30 23 * * 6 /path/to/script.sh  # Every Saturday at 11:30 PM"
echo "*/15 * * * 0 /path/to/script.sh  # Every 15 minutes on Sundays"

# AT command examples
echo "AT Command Examples:"
echo 'echo "/path/to/script.sh" | at 14:00  # Today at 2 PM'
echo 'echo "/path/to/script.sh" | at 17:00 tomorrow  # Tomorrow at 5 PM'
echo 'echo "/path/to/script.sh" | at 8:00 next Monday  # Next Monday at 8 AM'
echo 'echo "/path/to/script.sh" | at now + 2 hours  # In 2 hours'
echo 'echo "/path/to/script.sh" | at now + 30 minutes  # In 30 minutes'
echo 'echo "/path/to/script.sh" | at 6:00 next Friday  # Next Friday at 6 AM'
echo 'echo "/path/to/script.sh" | at noon 1st  # Noon on the 1st of next month'
echo 'echo "/path/to/script.sh" | at midnight  # Midnight tonight'
echo 'echo "/path/to/script.sh" | at 15:00 15  # 3 PM on the 15th'
echo 'echo "/path/to/script.sh" | at 9:00 Dec 25  # 9 AM on Christmas'

exit 0

#Read While

while read -r line; do
echo "$line --> This is line number $a"
a=$(( $a + 1))
done < sample

exit 0

#While withgetopts
while getopts "c:f:" optt; do
case "$optt" in
    c) result= echo $((($OPTARG * (9/5)) + 32 ));;
    f) result= echo $((($OPTARG - 32) * (5/9) ));;
    ?);;
esac
done
printf result
exit 0


# Read Array and process substituion

readarray -t file < <(ls -lrt)

for i in "${file[@]}"
do
    echo $i
done

exit 0

#Read-While

line_num=0
while read line; do
    line_num=$(( $line_num + 1 ))
    echo "$line ---> This is line Number $line_num"
done < sample

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










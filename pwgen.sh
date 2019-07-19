#!/bin/bash

###
##  For generating a tabula recta with some sort-of random characters
###

echo "   A B C D E F G H I J K L M N O P Q R S T U V W X Y Z "
echo " +----------------------------------------------------"
for i in A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
do
    echo -n "$i|"
    openssl rand -base64 30 | cut -c-26 | sed -e's/\(.\)/ \1/g'
done

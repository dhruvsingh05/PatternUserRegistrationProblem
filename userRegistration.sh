#!/bin/bash -x
read -p "Enter your first name: " fname
pattern="^[A-Z][a-z]{2,}$"
if [[ $fname =~ $pattern ]]
then
echo "Done"
else
echo "please enter your correct name"
fi


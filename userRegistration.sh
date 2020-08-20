#!/bin/bash -x
read -p "Enter your first name: " fname
pattern="^[A-Z][a-z]{2,}$"
if [[ $fname =~ $pattern ]]
then
	read -p "Enter your Last Name: " lname
	pattern1="^[A-Z][a-z]{2,}$"
		if [[ $lname =~ $pattern1 ]]
		then
			echo "Thank you"
		else
			echo "please enter your correct Last Name"
		fi
else
	echo "please enter your correct First Name"
fi


#!/bin/bash -x
read -p "Enter your first name: " fname
pattern="^[A-Z][a-z]{2,}$"
if [[ $fname =~ $pattern ]]
then
	read -p "Enter your Last Name: " lname
	pattern1="^[A-Z][a-z]{2,}$"
		if [[ $lname =~ $pattern1 ]]
		then
			
			read -p "Enter your Email Adress: " email
        		pattern2="^[0-9a-zA-Z]+([._+-][0-9a-zA-z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})*$"
                	if [[ $email =~ $pattern2 ]]
                	then
				echo "Thank You"
                	else
                        	echo "please enter your correct Email Address"
                	fi
		else
			echo "please enter your correct Last Name"
		fi
else
	echo "please enter your correct First Name"
fi


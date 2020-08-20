#!/bin/bash 
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
				
				read -p "Enter your Mobile number (eg:91 1234567890 ): " m_no
                        	pattern3="^[1-9]{2,2}([ ][1-9])([0-9]{9,9})$"
                        	if [[ $m_no =~ $pattern3 ]]
                        	then
                                	
 					read -p "Enter your password(min 8 char): " pass
                                	password="([0-9a-zA-Z!@#$]{8,})$"
					u_case="[A-Z]+"
                                	num="[0-9]+"
					if [[ $pass =~ $password && $pass =~ $u_case && $pass =~ $num  ]]
                                	then
                                        	echo "Thank You"
                                	else
                                        	echo "Length should be 8 characters"
						echo "It should contain at least one capital case letter."
						echo "It should contain at least one number"
                                	fi

                        	else
                                	echo "please enter your correct mobile number"
                        	fi


                	else
                        	echo "please enter your correct Email Address"
                	fi
		else
			echo "please enter your correct Last Name"
		fi
else
	echo "please enter your correct First Name"
fi


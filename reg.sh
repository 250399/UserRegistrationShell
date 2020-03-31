#!/bin/bash



echo Welcome User Registration program


read -p"Enter User name :" user
userFlag=valid
for i in 1 2
do
	name=`echo $user | awk  '{ print $'$i' }'`
	echo $name
	if [[ $name =~ ^[A-Z@][a-z]{2,} ]] 
	then
		continue
	else
		userFlag=Invalid
		break
	fi
done
[ "$userFlag" = "valid" ] && echo Valid || echo Invalid

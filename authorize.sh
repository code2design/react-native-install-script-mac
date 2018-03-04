#!/bin/sh

#Author @Supritkumar Shah

#test
# echo "First arg: $email and Password: $password"

RED='\033[0;31m'
YELLOW='\033[1;33m'
LIGHTGREEN='\033[1;32m'

#github email address
 echo "Enter your github email address"
 read email

 #github password
read  -s -p "Enter github account password: " password
echo "\n"

 #title of the ssh key example: macbook Air
echo "Name of the device you like to add on github. Without space."
 read device



echo "When you prompted for ${YELLOW}filename just ${LIGHTGREEN}click on ${RED}enter"

 ssh-keygen -t rsa -b 4096 -C $email

curl -u "$email:$password" --data '{"title":"'"$device"'","key":"'"$(cat ~/.ssh/id_rsa.pub)"'"}' https://api.github.com/user/keys



echo "Your computer is successfull connected to Github account."


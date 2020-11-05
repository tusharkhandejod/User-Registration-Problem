#!/bin/bash
echo "Welcome to the User Registration program"

function validFirstName() {
read -p "Enter the first name:" firstName
patternForFirstName="^[[:upper:]]{1}[[:lower:]]{2,}$"
if [[ $firstName =~ $patternForFirstName ]]
then
echo "Valid First Name"
else
echo "Invalid First Name"
fi
}
validFirstName

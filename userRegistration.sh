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

function validLastName() {
read -p "Enter the last name:" lastName
patternForLastName="^[[:upper:]]{1}[[:lower:]]{2,}$"
if [[ $lastName =~ $patternForLastName ]]
then
echo "Valid Last Name"
else
echo "Invalid Last Name"
fi
}

function emailPattern(){
read -p "Enter email id : " emailid
pat="^(([A-Za-z0-9]+((\.|\-|\_|\+)?[A-Za-z0-9]?)*[A-Za-z0-9]+)|[A-Za-z0-9]+)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$" 
#all conditions true
if [[ $emailid =~ $pat ]]
then
echo "Valid Email Address"
else
echo "Invalid Email Address"
fi
}

function mobNumberValidation(){
read -p "Enter mobile number:" mobileNum
country_code=91
pat="^\+[0-9]{2}[ ][0-9]{10}$"
if [[ $mobileNum =~ $pat ]]
then
echo "valid mobile number"
else
echo "Invalid mobile number"
fi
}

function password(){
read -p "Enter Password:" password
pat="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@!#$%])(?=.*[a-zA-Z0-9@!#$]).{8,}$"
if [[ $password =~ $pat ]]
then
echo "valid password"
else
echo "Invalid password"
fi
}

validFirstName
validLastName
emailPattern
mobNumberValidation
password

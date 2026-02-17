#!/bin/bash

echo "Create file"
touch utkarsh.txt

echo "Enter content into file"
echo "My name is Utkarsh." > utkarsh.txt
echo "I am a Computer Science student." >> utkarsh.txt
echo "I am learning Operating Systems and Linux." >> utkarsh.txt
echo "linux is powerful and useful." >> utkarsh.txt

echo "Display the content of the file"
cat utkarsh.txt

echo "Display number of lines, words and characters"
wc utkarsh.txt

echo "Sort the content of the file"
sort utkarsh.txt

echo "Transform lowercase to uppercase"
tr 'a-z' 'A-Z' < utkarsh.txt

echo "Find length of string"
name="Utkarsh"
echo ${#name}

echo "Concatenate two strings"
str1="Utkarsh"
str2="Operating Systems"
echo "$str1 $str2"

echo "Extract substring"
string="OperatingSystem"
echo ${string:0:9}

echo "Reverse a string"
string="Utkarsh"
echo "$string" | rev

echo "Search in file"
grep "Linux" utkarsh.txt

echo "Rename the file"
mv utkarsh.txt utkarsh_linux.txt

echo "Delete the file"
rm utkarsh_linux.txt


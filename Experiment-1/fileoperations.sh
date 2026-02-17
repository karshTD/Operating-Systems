echo "Display the content of the file"
cat utkarsh.txt

echo "Display number of lines, words and characters"
wc utkarsh.txt

echo "Sort the content of the file"
sort utkarsh.txt

echo "Transform content from lowercase to uppercase"
tr 'a-z' 'A-Z' < utkarsh.txt

echo "Find length of string"
string="Utkarsh"
echo ${#string}

echo "Concatenate two strings"
str1="Utkarsh"
str2="CS Student"
echo "$str1 $str2"

echo "Extract substring"
string="OperatingSystem"
echo ${string:0:9}

echo "Reverse a string"
string="Utkarsh"
echo "$string" | rev

echo "Search in the file"
grep "Linux" utkarsh.txt

echo "Rename the file"
mv utkarsh.txt utkarsh_os.txt

echo "Change file permission"
chmod 777 utkarsh_os.txt
ls -l utkarsh_os.txt

echo "Delete the file"
rm utkarsh_os.txt

echo "Delete the directory"
cd ..
rmdir os_assignment

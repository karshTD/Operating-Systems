

clear
echo "============================================"
echo "       FILE OPERATIONS DEMONSTRATION"
echo "============================================"
echo ""

# 1. CREATE FILE
echo "1. CREATING A FILE"
echo "=================="
echo "Command: touch demo.txt"
touch demo.txt
echo "✓ File created: demo.txt"
ls -l demo.txt
echo ""

# 2. ENTER CONTENT
echo "2. ENTERING CONTENT"
echo "==================="
echo "Command: Writing content to demo.txt"
cat > demo.txt << 'EOF'
Linux Ubuntu 22.04
Shell Scripting Experiment
File Operations Demo
Learn Linux Commands
Operating Systems Lab
EOF
echo "✓ Content written to demo.txt"
echo ""

# 3. DISPLAY CONTENT
echo "3. DISPLAYING CONTENT"
echo "====================="
echo "Command: cat demo.txt"
echo ""
echo "File contents:"
echo "--------------"
cat demo.txt
echo "--------------"
echo ""

# 4. COUNT LINES, WORDS, CHARACTERS
echo "4. COUNTING STATISTICS"
echo "======================"
echo "Command: wc demo.txt"
echo ""
echo "Lines  Words  Characters  Filename"
echo "----------------------------------"
wc demo.txt
echo ""

# 5. SORT CONTENT
echo "5. SORTING CONTENT"
echo "=================="
echo "Command: sort demo.txt"
echo ""
echo "Sorted content:"
echo "--------------"
sort demo.txt
echo "--------------"
echo ""

# 6. CONVERT TO UPPERCASE
echo "6. CONVERTING TO UPPERCASE"
echo "=========================="
echo "Command: tr '[:lower:]' '[:upper:]' < demo.txt"
echo ""
echo "Uppercase version:"
echo "------------------"
tr '[:lower:]' '[:upper:]' < demo.txt
echo "------------------"
echo ""

# 7. STRING LENGTH
echo "7. STRING LENGTH"
echo "================"
echo "Calculating length of 'HelloWorld':"
str="HelloWorld"
echo "Command: str=\"HelloWorld\""
echo "Command: echo \${#str}"
echo "String: $str"
echo "Length: ${#str}"
echo ""

# 8. CONCATENATE STRINGS
echo "8. CONCATENATING STRINGS"
echo "========================"
str1="File"
str2="Operation"
result="${str1}${str2}"
echo "String 1: '$str1'"
echo "String 2: '$str2'"
echo "Concatenated: '$result'"
echo ""

# 9. EXTRACT SUBSTRING
echo "9. EXTRACTING SUBSTRING"
echo "======================="
full="UbuntuLinux"
sub="${full:0:6}"
echo "Original: '$full'"
echo "Substring (0-6): '$sub'"
echo ""

# 10. REVERSE STRING
echo "10. REVERSING STRING"
echo "===================="
echo "Original: 'ABCDE'"
echo "Reversed: '$(echo "ABCDE" | rev)'"
echo ""

# 11. SEARCH IN FILE
echo "11. SEARCHING IN FILE"
echo "====================="
echo "Searching for 'Linux' in demo.txt:"
echo "Command: grep -n 'Linux' demo.txt"
echo ""
grep -n 'Linux' demo.txt
echo ""

# 12. RENAME FILE
echo "12. RENAMING FILE"
echo "================="
echo "Command: mv demo.txt renamed_file.txt"
mv demo.txt renamed_file.txt
echo "✓ File renamed"
echo "Current files:"
ls -l *.txt
echo ""

# 13. DELETE FILE
echo "13. DELETING FILE"
echo "================="
echo "Command: rm renamed_file.txt"
rm renamed_file.txt
echo "✓ File deleted"
echo "Verification:"
ls -l *.txt 2>/dev/null || echo "No .txt files found"
echo ""

echo "============================================"
echo "      ALL OPERATIONS COMPLETED SUCCESSFULLY!"
echo "============================================"
echo "Operations demonstrated:"
echo "1. Create file         2. Enter content"
echo "3. Display content     4. Count statistics"
echo "5. Sort content        6. Convert uppercase"
echo "7. String length       8. Concatenate strings"
echo "9. Extract substring   10. Reverse string"
echo "11. Search file        12. Rename file"
echo "13. Delete file"
echo "============================================"

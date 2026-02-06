#!/bin/bash

echo "Starting file operations..."
echo ""

echo "1. Creating file test.txt"
touch test.txt
echo "Done"

echo "2. Writing to file"
echo "This is line 1" > test.txt
echo "This is line 2" >> test.txt
echo "linux is good" >> test.txt
echo "Done"

echo "3. File contents:"
cat test.txt
echo ""

echo "4. Counting lines words chars:"
wc test.txt
echo ""

echo "5. Sorted file:"
sort test.txt
echo ""

echo "6. Uppercase version:"
cat test.txt | tr a-z A-Z
echo ""

echo "7. String length of hello:"
x="hello"
echo "Length is: ${#x}"
echo ""

echo "8. Joining two strings:"
a="hello"
b="world"
c="$a$b"
echo "Result: $c"
echo ""

echo "9. Getting part of string:"
s="linuxubuntu"
p="${s:0:5}"
echo "First 5 letters: $p"
echo ""

echo "10. Reversing abc:"
echo "abc" | rev
echo ""

echo "11. Searching for linux:"
grep linux test.txt
echo ""

echo "12. Renaming test.txt to new.txt"
mv test.txt new.txt
echo "Done"

echo "13. Deleting new.txt"
rm new.txt
echo "Done"

echo ""
echo "All operations completed."

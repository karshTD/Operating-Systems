#!/bin/bash

echo "Basic arithmetic operations"
read -p "Enter first number: " a
read -p "Enter second number: " b

add=$((a+b))
sub=$((a-b))
mul=$((a*b))
div=$((a/b))

echo "Addition: $add"
echo "Subtraction: $sub"
echo "Multiplication: $mul"
echo "Division: $div"


echo "Circle area and perimeter"
read -p "Enter radius: " r

area=$(echo "3.14 * $r * $r" | bc)
perimeter=$(echo "2 * 3.14 * $r" | bc)

echo "Area: $area"
echo "Perimeter: $perimeter"


echo "Employee gross salary"
read -p "Enter basic salary: " basic

da=$(echo "$basic * 0.0165" | bc)
hra=$(echo "$basic * 0.0030" | bc)
gross=$(echo "$basic + $da + $hra" | bc)

echo "Gross Salary: $gross"


echo "Mean salary of employees"
a=1200
b=1400
c=1350
d=1800

mean=$(((a+b+c+d)/4))

echo "Mean Salary: $mean"

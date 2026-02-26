#!/bin/bash

echo "Even or Odd"
read -p "Enter a number: " num

if [ $((num%2)) -eq 0 ]
then
    echo "Number is Even"
else
    echo "Number is Odd"
fi


echo "Largest of three numbers"
read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c

if [ $a -ge $b ] && [ $a -ge $c ]
then
    echo "Largest: $a"
elif [ $b -ge $a ] && [ $b -ge $c ]
then
    echo "Largest: $b"
else
    echo "Largest: $c"
fi


echo "Leap Year Check"
read -p "Enter year: " year

if [ $((year%400)) -eq 0 ] || { [ $((year%4)) -eq 0 ] && [ $((year%100)) -ne 0 ]; }
then
    echo "Leap Year"
else
    echo "Not a Leap Year"
fi


echo "Bank Balance Calculation"
read -p "Enter account balance: " balance
read -p "Enter withdrawal amount: " withdraw

if [ $withdraw -gt $balance ]
then
    echo "Insufficient Balance"
else
    if [ $withdraw -lt 1500 ]
    then
        tax=$(echo "$withdraw * 0.03" | bc)
    elif [ $withdraw -gt 1500 ] && [ $withdraw -lt 3000 ]
    then
        tax=$(echo "$withdraw * 0.04" | bc)
    else
        tax=$(echo "$withdraw * 0.05" | bc)
    fi

    total=$(echo "$withdraw + $tax" | bc)
    remaining=$(echo "$balance - $total" | bc)

    echo "Withdrawal Amount: $withdraw"
    echo "Tax Deducted: $tax"
    echo "Remaining Balance: $remaining"
fi

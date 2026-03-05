#!/bin/bash

while true
do
echo "------ Student Wellbeing Tracker ------"
echo "1. Academic Progress Check"
echo "2. BMI Health Check"
echo "3. Mood Check"
echo "4. Daily Water Intake Check"
echo "5. Meal Check"
echo "6. Stress Level Check"
echo "7. Exit"

echo -n "Enter your choice: "
read choice

case $choice in

1)
    echo "Enter your marks (0-100): "
    read marks

    if [ $marks -ge 75 ]
    then
        echo "You are doing very well academically. Keep maintaining the effort."
    elif [ $marks -ge 60 ]
    then
        echo "Your performance is good but there is room for improvement."
    elif [ $marks -ge 50 ]
    then
        echo "You should increase your study hours and revise more regularly."
    else
        echo "Your marks suggest you need to focus much more on your studies."
    fi
    ;;

2)
    echo "Enter your weight in kg:"
    read weight

    echo "Enter your height in meters:"
    read height

    bmi=$(echo "scale=2; $weight / ($height * $height)" | bc)

    echo "Your BMI is: $bmi"

    if (( $(echo "$bmi < 18.5" | bc -l) ))
    then
        echo "You are underweight. Try maintaining a healthier diet."
    elif (( $(echo "$bmi >= 18.5 && $bmi < 25" | bc -l) ))
    then
        echo "Your BMI is within the healthy range."
    elif (( $(echo "$bmi >= 25 && $bmi < 30" | bc -l) ))
    then
        echo "You are slightly overweight. Regular exercise could help."
    else
        echo "Your BMI indicates obesity. Improving diet and activity is important."
    fi
    ;;

3)
    echo "On a scale of 1 to 10, how is your mood today?"
    read mood

    if [ $mood -ge 8 ]
    then
        echo "Great to hear. Keep that positive energy."
    elif [ $mood -ge 5 ]
    then
        echo "Seems like an average day. Make sure to take short breaks."
    else
        echo "You seem a bit low. Try relaxing or talking to a friend."
    fi
    ;;

4)
    echo "How many glasses of water did you drink today?"
    read water

    if [ $water -ge 8 ]
    then
        echo "Good hydration. Keep it up."
    elif [ $water -ge 5 ]
    then
        echo "Not bad, but try to drink a little more water."
    else
        echo "You should drink more water during the day."
    fi
    ;;

5)
    echo "How many proper meals did you have today?"
    read meals

    if [ $meals -ge 3 ]
    then
        echo "Good. Maintaining regular meals helps with energy."
    elif [ $meals -eq 2 ]
    then
        echo "You might want to add another meal or snack."
    else
        echo "Skipping meals can affect concentration and health."
    fi
    ;;

6)
    echo "On a scale of 1 to 10, how stressed do you feel?"
    read stress

    if [ $stress -le 3 ]
    then
        echo "Your stress level seems low. That's good."
    elif [ $stress -le 6 ]
    then
        echo "Moderate stress. Make sure to balance work and rest."
    else
        echo "High stress detected. Consider taking breaks or relaxing."
    fi
    ;;

7)
    echo "Take care of yourself. Goodbye."
    break
    ;;

*)
    echo "Invalid choice. Please try again."
    ;;

esac

echo
done


       

while true 
do 
echo "student wellbeing tool"
echo "1. Check your academic status"
echo "2. calculate BMI"
echo "3. Show Study Motivation"
echo "4. Exit"

echo -n "enter your choice: "
read choice

case $choice in 
1)
   echo "enter your marks (0-100): "
   read marks

   if [ $marks -ge 75]
   then 
       echo "keep going"
    elif [ $marks -ge 60 ]
    then
        echo "needs improvement"
    elif [ $marks -ge 50 ]
    then
        echo "bad result"
    else
        echo "Fail"
    fi
    ;;

2)
   echo "enter weight in kg: " 
   read weight
   echo "enter height in meters: "
   read height

   bmi = $(echo "$weight/($height * $height)" | bc -l)
   echo "your bmi is: $bmi"
   ;;

3)
    echo" work hard play harder"
    ;;

4)
    echo "Exiting program"
    break
    ;;
*) 
    echo "invalid option"
    ;;
esac

echo 
done


       

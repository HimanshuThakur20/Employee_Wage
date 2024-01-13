

function attendence () {
isPresent=1
checkAttendence=$((RANDOM%2))

if [ $checkAttendence -eq $isPresent ]
then
    echo "Employee is presenet"
else
    echo "Employee is absent"
fi
}


echo "enter your choice 1-attendence, 2-daily wage, 3-part time wage, 4-wage for a month, 5-wages total working hours" 
read choice

case  $choice in 
	1)
	attendence
	;;

	2)
	;;

	3)
	;;

	4)
	;;

	5)
	;;

	*)
	  echo "invalid input"
	;;
esac

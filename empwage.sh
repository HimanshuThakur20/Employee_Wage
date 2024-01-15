
wagePerHour=20
fullDayHour=8
empDailyWage=$(($wagePerHour*$fullDayHour))


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


function dailyWage(){
wagePerHour=20
fullDayHour=8
empDailyWage=$(($wagePerHour*$fullDayHour))
echo "Daily wage of employee is $empDailyWage"
}


function partTimeWage(){
wagePerHour=20
partTimeHour=8
empPartTimeWage=$(($wagePerHour*$partTimeHour))
echo "Part time wage of the emloyee is $empPartTimeWage"
}

function monthlyWage(){
workingDays=20
empMonthlyWage=$(($workingDays*empDailyWage))
echo "Monthly wage of employee is $empMonthlyWage"
}

function totalWorkingHours(){
totalHours=100
totalDays=20
wageByHour=$(($totalHours*$wagePerHour))
wageByDays=$(($totalDays*$empDailyWage))
echo "wages for 100 hours is $wageByHour"
echo "wages for 20 days is $wageByDays"
}

echo "enter your choice 1-attendence, 2-daily wage, 3-part time wage, 4-wage for a month, 5-wages total working hours" 
read choice

case  $choice in 
	1)
	attendence
	;;

	2)
	dailyWage
	;;

	3)
	partTimeWage
	;;

	4)
	monthlyWage
	;;

	5)
	totalWorkingHours
	;;

	*)
	  echo "invalid input"
	;;
esac

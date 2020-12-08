#!/bin/bash -x

echo "Welcome to the Employee wage computation"

#UC9
IS_PRESENT=1
IS_ABSENT=0
IS_PARTTIME=2
empRatePerHr=20
NumWorkingDays=20
MaxHrsInMonth=100

totalEmpHrs=0
totalWorkingDays=0

declare -A dailyWageDIC

function getWorkingHrs(){

attendanceCheck=$((RANDOM%3))
case "$attendanceCheck" in
	$IS_PRESENT)
		empHrs=8
      ;;          
	$IS_PARTTIME)
		empHrs=4
		;;
	*)
		empHrs=0
      ;;
esac
echo "$empHrs"
}

while [[ $totalEmpHrs -lt $MaxHrsInMonth && $totalWorkingDays -lt $NumWorkingDays ]]
do     
	((totalWorkingDays++))
	workingHrs="$( getWorkingHrs )"
	dailyWage=$(( $workingHrs*$empRatePerHr ))
   dailyWageDIC["DAY"$totalWorkingDays]=$dailyWage
	totalEmpHrs=$(($totalEmpHrs+$workingHrs))
done

totalsalary=$(($totalEmpHrs*$empRatePerHr))
echo "daily wages:"${dailyWageDIC[@]}
echo "DAY:"${!dailyWageDIC[@]}
echo "total salary:"$totalsalary

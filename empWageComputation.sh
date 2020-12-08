#!/bin/bash -x

echo "Welcome to the Employee wage computation"

#UC5
IS_PRESENT=1
IS_ABSENT=0
IS_PARTTIME=2

empRatePerHr=20
numWorkingDays=20
totalSalary=0

for (( day=1; day<=$numWorkingDays; day++ ))
do
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
	dailyWage=$(($empHrs*$empRatePerHr))
	totalSalary=$(($dailyWage+$totalSalary))
done

#!/bin/bash -x

echo "Welcome to the Employee wage computation"

#UC3
IS_PRESENT=1
IS_ABSENT=0
IS_PARTTIME=2

empRatePerHr=20

attendanceCheck=$((RANDOM%3))

if [ $attendanceCheck -eq 1 ]
then
	empHrs=8
	salary=$(($empHrs*$empRatePerHr))
elif [ $attendanceCheck -eq 2 ]
then
	empHrs=4
	salary=$(($empHrs*$empRatePerHr))
else
salary=0
fi

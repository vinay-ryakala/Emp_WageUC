#!/bin/bash -x

echo "Welcome to the Employee wage computation"

#UC2
IS_PRESENT=1
IS_ABSENT=0

empRatePerHr=20
empHrs=8

attendanceCheck=$((RANDOM%2))

if [ $attendanceCheck -eq 1 ]
then
	salary=$(($empHrs*$empRatePerHr))
else
	salary=0
fi

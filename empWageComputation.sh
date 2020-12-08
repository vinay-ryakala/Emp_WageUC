#!/bin/bash -x

echo "Welcome to the Employee wage computation"

#UC1
IS_PRESENT=1
IS_ABSENT=0

attendanceCheck=$((RANDOM%2))

if [ $attendanceCheck -eq 1 ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi

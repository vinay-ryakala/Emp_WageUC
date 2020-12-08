#!/bin/bash -x

echo "Welcome to the Employee wage computation"

#UC3
IS_PRESENT=1
IS_ABSENT=0
IS_PARTTIME=2

empRatePerHr=20

attendanceCheck=$((RANDOM%3))

case "$attendanceCheck" in
	$IS_PRESENT)
		empHrs=8
		salary=$(($empHrs*$empRatePerHr))
		;;
	$IS_PARTTIME)
		empHrs=4
		salary=$(($empHrs*$empRatePerHr))
		;;
	*)
		salary=0
		;;
esac

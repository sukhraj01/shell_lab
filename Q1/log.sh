#!/bin/bash
# Script to parse log files and count success/failures for each user

# Count logins, logouts, and failed logins for each user
aaditya_login=$(grep "User Aaditya logged in" logs/*.log | wc -l)
aaditya_logout=$(grep "User Aaditya logged out" logs/*.log | wc -l)
aaditya_success=$((aaditya_login < aaditya_logout ? aaditya_login : aaditya_logout))
aaditya_fail=$(grep "User Aaditya failed login" logs/*.log | wc -l)

rohan_login=$(grep "User Rohan logged in" logs/*.log | wc -l)
rohan_logout=$(grep "User Rohan logged out" logs/*.log | wc -l)
rohan_success=$((rohan_login < rohan_logout ? rohan_login : rohan_logout))
rohan_fail=$(grep "User Rohan failed login" logs/*.log | wc -l)

sneha_login=$(grep "User Sneha logged in" logs/*.log | wc -l)
sneha_logout=$(grep "User Sneha logged out" logs/*.log | wc -l)
sneha_success=$((sneha_login < sneha_logout ? sneha_login : sneha_logout))
sneha_fail=$(grep "User Sneha failed login" logs/*.log | wc -l)

# Print results in the required format
printf "Aaditya   : %d success, %d fail\n" $aaditya_success $aaditya_fail
printf "Rohan     : %d success, %d fail\n" $rohan_success $rohan_fail
printf "Sneha     : %d success, %d fail\n" $sneha_success $sneha_fail

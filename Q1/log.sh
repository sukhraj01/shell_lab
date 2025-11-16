#!/bin/bash
# Script to parse log files and count success/failures for each user

# Count successful logins and failed logins for each user
aaditya_success=$(grep "User Aaditya logged in" logs/*.log | wc -l)
aaditya_fail=$(grep "User Aaditya failed login" logs/*.log | wc -l)

rohan_success=$(grep "User Rohan logged in" logs/*.log | wc -l)
rohan_fail=$(grep "User Rohan failed login" logs/*.log | wc -l)

sneha_success=$(grep "User Sneha logged in" logs/*.log | wc -l)
sneha_fail=$(grep "User Sneha failed login" logs/*.log | wc -l)

# Print results in the required format
printf "Aaditya   : %d success, %d fail\n" $aaditya_success $aaditya_fail
printf "Rohan     : %d success, %d fail\n" $rohan_success $rohan_fail
printf "Sneha     : %d success, %d fail\n" $sneha_success $sneha_fail

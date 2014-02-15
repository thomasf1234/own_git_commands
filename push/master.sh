#!/bin/bash

SCRIPT=$0

#echo "file_path : $0"
#echo "arg 1 : $1"
#echo "arg 2 : $2"
#echo "arg 3 : $3"
#echo "@@@@@@@@@@@@@@"
#echo "all args 1..n : $@"

function include_script_utilities {
 source /home/ad/own_git_commands/push/lib/$1_lib.sh 
}

function run_script {
 source /home/ad/own_git_commands/push/app/$1.sh
}


include_script_utilities $1
run_script $1

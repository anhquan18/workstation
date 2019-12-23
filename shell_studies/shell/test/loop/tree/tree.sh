#!/bin/bash

find_file ()
{
    local file_path=$1
    local indent=$2

    printf "${indent}inside ${file_path##*/} dir is: \n"
    for f_name in $(ls $file_path)
    do
        printf  "${indent}${f_name}\n"
        if [ -d ${file_path}/${f_name} ]; then 
            find_file "${file_path}/${f_name}" "\t$indent"
        fi
    done
}

find_file $1

#!/bin/bash

find_file ()
{
    local file_path=$1
    printf "Inside dir $file_path is $(ls $file_path)\n"

    if [ -d $file_path ]; then
        for f_name in $(ls $file_path)
        do
            if [ -d ${file_path}/${f_name} ]; then 
                find_file ${file_path}/${f_name}
            fi
        done
    fi
}

find_file $1

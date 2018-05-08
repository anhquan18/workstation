#!/bin/bash

find_file ()
{
    local file_path=$1
    printf "inside ${file_path##*/} dir is: "
       
    for f_name in $(ls $file_path)
    do
        if [ -d ${file_path}/${f_name} ]; then 
            find_file ${file_path}/${f_name}
        else
            echo $f_name
        fi
    done
}

find_file $1

#!/bin/bash

find_file ()
{
    file_path=$1
    if [ -d $file_path ]; then
        local f_name
        echo $(ls $file_path)
        for f_name in $(ls $file_path)
        do
            local backup=$f_name
            echo ${file_path}/${f_name}
            if [ -d $file_path/$f_name ]; then 
                f_name=$file_path/$f_name
                echo "This is f_name $f_name"
                find_file $f_name
                echo "check $f_name"
            fi
            f_name=$backup
            echo "this is backup $backup"
        done
    fi
}

find_file $1

#!/bin/bash

check="Hello"

func1 ()
{
    printf "check = $check \n"
    local check="Gutten tag"
    echo "check = $check inside function"
}

echo "check = $check"
func1
echo "check = $check"

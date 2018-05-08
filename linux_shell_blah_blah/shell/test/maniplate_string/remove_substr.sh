#!/bin/bash

# The ## pattern help you remove the longest match substring 
file_path=/home/quan/git/my_file/Tic_Tac_Toe_with_pygame/x_o3.py

# string ## pattern, in here we are removing all of the pattern that end with /
echo "${file_path##*/}"

# The # pattern help you remove shortest match substring
echo "${file_path#*/}"

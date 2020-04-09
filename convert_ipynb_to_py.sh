#!/bin/bash

py_file_name='tp4.py'

if [ -e  $PWD/$py_file_name ]
then
	date_str=$(date +"%Y_%m_%d_%H:%M:%S")
	cp $PWD/$py_file_name $PWD/'tp4_backup_'$date_str'.py'
fi

ipynb-py-convert ./tp4.ipynb ./$py_file_name

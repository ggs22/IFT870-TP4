#!/bin/bash

ipynb_file_name='tp4.ipynb'

if [ -e $PWD/$ipynb_file_name ]
then
	date_str=$(date +"%Y_%m_%d_%H:%M:%S")
	cp $PWD/$ipynb_file_name $PWD/'tp4_backup_'$date_str'.ipynb'
fi

ipynb-py-convert ./tp4.py ./$ipynb_file_name

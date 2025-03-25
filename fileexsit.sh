#!/bin/bash

FILE="/home/dileep_malepu/addline.py"

if [ -f "$FILE" ]; then
	echo "test passed: $FILE exists."

else 
	echo "Test failed : $FILE does not exist."

fi

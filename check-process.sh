#!/bin/bash

process="chrome"


if pgrep -x "$process" > /dev/null ; then 
	echo "test passed "$process" is running"

else 
	echo "test failed "$process" is not running"

fi


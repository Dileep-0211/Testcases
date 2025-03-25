#!/bin/bash

AVAILABLE=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%' )

if [ "$AVAILABLE" -gt 70 ]; then 
	echo "Test passed and available disk space is "$AVAILABLE"."

else 
	echo "test failed your storage is low.available space is "$AVAILABLE" "

fi


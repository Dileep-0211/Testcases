#!/bin/bash
LOGFILE="BOOT.log"

echo "waiting for board to boot...."

(cat /dev/ttyUSB0 & pid=$! ; sleep 10; kill $pid ) | tee $LOGFILE
BOOT_TIME=$(grep -oP "Boot took \k[0-9]+" $LOGFILE)

if ["$BOOT_TIME" -lt 5 ]; then 
	echo "Test Passed"

else 
	echo"Test Failed"

fi

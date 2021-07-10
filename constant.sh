#!/bin/sh

i=0
while :
do 
  ./bin/odaslive -vc config/odaslive/respeaker_6_mic_array.cfg
# if you are recording on the device use the following lines to make sure it copies the recordings
BASE = "session-sd-"
END = "potential.json"
NEWNAME = $BASE$i"-"$END
cp session-sd-potential.json $NEWNAME
  sleep 1
done

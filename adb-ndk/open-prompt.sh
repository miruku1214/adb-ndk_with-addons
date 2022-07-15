#!./bin/bash
#./bin/adb-loader
#echo
#./bin/adb-loader devices

while IFS="" read -r -e -d $'\n' -p $'\033[0;32madb>\033[0m' line; do

 if [ "$line" == "exit" ]
 then
  exit
 else
  if [ -z "$line" ]
  then
   ./bin/adb-loader
  else
   history -s "$line"
   ./bin/adb-loader $line
  fi
 fi
done
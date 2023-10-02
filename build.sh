#!/usr/bin/env bash
DATENOW=$(date +%m-%d-%y)
while true; do
read -p "Do you want to push to git?" yn
case $yn in
  y ) git add .; git commit -m "updated from script on $DATENOW"; git push; exit;;
  n ) echo "FINE BYE <3"; exit;;
  * ) echo "invalid input also bye"; exit;;
esac
done 

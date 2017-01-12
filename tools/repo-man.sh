#!/bin/bash
URL=$1
BASEDIR=$2
if [$URL == ""]
then 
    echo "Please provide a repo url (http://... ending in .zip"
    exit 1
fi 

if [$BASEDIR == ""]
then 
    echo "Please provide a base directory for the present tool"
    exit 1
fi 

TALKDIR=/tmp/talks
mkdir $TALKDIR

# Start the go present tool. Should probably also check that the present tool
# is installed, but whatevs.
present -base $BASEDIR -http :3999 &

# Continuously download talks from the given repo url 
while true
do 
    wget -O /tmp/repo.zip $URL
    unzip -u -o /tmp/repo -d $TALKDIR
    sleep 300
done 

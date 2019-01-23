#!/bin/bash

LOG=logs/network.log
PIDFILE=network.pid

echo Stopping PID $(cat $PIDFILE)

echo kill with -SIGINT
cat $PIDFILE | xargs kill -SIGINT
echo sleep 14
sleep 14
echo kill with -9
cat $PIDFILE | xargs kill -9
sleep 1

rm $PIDFILE

echo
echo Stopped. Reaction added to the tail of the log file, see yourself:
echo tail -n 10 $LOG
echo
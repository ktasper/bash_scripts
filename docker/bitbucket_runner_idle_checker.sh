#!/bin/bash

# This script will power off the host machine if there is only 1 container running.

# Get the names of all the running containers and count how many results we have
get_running=$(docker ps --format '{{.Names}}' | wc -l )

# If there is only 1 container running we can shut the host down, otherwise do nothing
if [[ $get_running -eq 1 ]];
then
	shutdown 0
fi

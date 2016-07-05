#!/bin/bash

if [ "$1" == "" ] ; then
	echo No name specified
	exit 1
fi

PORT=$2

if [ "$PORT" == "" ] ; then
	PORT=80
fi

docker run --name=$1 --restart=always -p $PORT:8111 -d adgico/teamcity-9.x.y-server

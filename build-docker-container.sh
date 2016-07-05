#!/bin/bash

docker rmi adgico/teamcity-9.x.y-server
docker build -t adgico/teamcity-9.x.y-server .

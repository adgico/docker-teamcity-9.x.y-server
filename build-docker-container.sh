#!/bin/bash

docker rmi adgico/teamcity-9.1-server
docker build -t adgico/teamcity-9.1-server .


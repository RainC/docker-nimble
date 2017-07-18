#!/bin/sh 
docker build --rm -t rjrivero/nimble docker-nimble
docker run --rm -p 8081:8081 -p 1935:1935 \
    -h instance-hostname \
    -e WMSPANEL_USER=your@user.name \
    -e WMSPANEL_PASS=your_password  \
    --name nimble rjrivero/nimble

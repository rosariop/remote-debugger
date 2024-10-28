#!/bin/bash

docker run -e JPDA_ADDRESS=*:8000 \
           -p 8080:8080 \
           -p 8000:8000 \
           --name demo \
           --volume ./data/:/usr/local/tomcat/conf/ \
           pol/demo:latest \
           catalina.sh jpda run
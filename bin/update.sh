#!/bin/bash

docker pull mrmarktyy/asa-app:latest
if docker stop asa-app; then docker rm asa-app; fi
docker run -d -p 8080:8080 --name asa-app mrmarktyy/asa-app
if docker rmi $(docker images --filter "dangling=true" -q --no-trunc); then :; fi

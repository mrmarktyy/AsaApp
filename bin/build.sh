#!/bin/bash

gox -output="asa" -osarch="linux/amd64"
docker build --no-cache -t asa-app .
docker tag asa-app:latest mrmarktyy/asa-app:latest
docker push mrmarktyy/asa-app:latest

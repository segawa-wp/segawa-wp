##!/bin/bash -xe

$(aws ecr get-login --no-include-email --region ap-northeast-1)
docker-compose build
docker-compose up
docker tag wordpress:latest 484112603605.dkr.ecr.ap-northeast-1.amazonaws.com/wordpress:latest
docker push 484112603605.dkr.ecr.ap-northeast-1.amazonaws.com/wordpress:latest


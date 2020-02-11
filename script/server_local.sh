#!/bin/bash

set -e

# get probot scrap url
# curl http://${LOCAL_HOST_SCRAP}:3000/probot/metrics
export CHARGO_HOST=$(ifconfig en0|grep 'inet\s'|awk '{print $2}')
docker run -it -e CHARGO_HOST=${CHARGO_HOST} \
           -e PORT=8080 \
           -p 9090:8080 \
            build-prometheus

#!/bin/bash
set -e
if [[ ! -d ./tracing-examples ]]; then
  git clone https://github.com/signalfx/tracing-examples.git
fi
cp extras/* tracing-examples/signalfx-tracing
cp -r tracing-examples/signalfx-tracing
cd tracing-examples/signalfx-tracing
docker build -f okhttp-and-jedis.Dockerfile -t workshop-app .
#docker-compose build

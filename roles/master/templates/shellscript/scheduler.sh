#!/bin/bash

docker run -d \
  --name=scheduler \
  --restart=always \
  --net=host \
  gcr.io/google_containers/kube-scheduler-amd64:v1.6.0 \
  kube-scheduler \
  --master=127.0.0.1:8080 \
  --v=2 \
  --leader-elect=true

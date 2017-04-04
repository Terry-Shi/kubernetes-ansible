#!/bin/bash

docker run -d \
  --name=controller-manager \
  --restart=always \
  --net=host \
  -v /etc/kubernetes:/etc/kubernetes \
  gcr.io/google_containers/kube-controller-manager-amd64:v1.6.0 \
  kube-controller-manager \
  --master=127.0.0.1:8080 \
  --cluster-name={{ cluster_name }} \
  --cluster-cidr={{ ip_range }} \
  --allocate-node-cidrs=true \
  --service-account-private-key-file=/etc/kubernetes/ca_file/master/server.key \
  --root-ca-file=/etc/kubernetes/ca_file/master/ca.crt \
  --v=2 \
  --leader-elect=true

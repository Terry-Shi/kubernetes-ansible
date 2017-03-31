docker run -d \
  --net=host \
  --name=kube-proxy \
  --privileged \
  --restart=always \
  -v /etc/kubernetes:/etc/kubernetes \
  danielqsj/kube-proxy-amd64:v1.6.0 \
  kube-proxy \
  --master=http://127.0.0.1:8080 \
  --logtostderr=true --v=0

docker run -d \
  --name=apiserver \
  --net=host \
  --restart=always \
  -v /etc/kubernetes:/etc/kubernetes \
  danielqsj/kube-apiserver-amd64:v1.6.0 \
  kube-apiserver \
  --insecure-bind-address=127.0.0.1 \
  --insecure-port=8080 \
  --bind-address=0.0.0.0 \
  --secure-port=443 \
  --etcd-servers={{ flannel_etcd }} \
  --service-cluster-ip-range={{ ip_range }} \
  --admission-control=NamespaceAutoProvision,LimitRanger,ServiceAccount,ResourceQuota,SecurityContextDeny \
  --client-ca-file=/etc/kubernetes/ca_file/master/ca.crt \
  --tls-cert-file=/etc/kubernetes/ca_file/master/server.crt \
  --tls-private-key-file=/etc/kubernetes/ca_file/master/server.key \
  --basic-auth-file=/etc/kubernetes/ca_file/basic_auth.csv \
  --allow-privileged=true

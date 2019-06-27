#!/bin/bash
images=(kube-proxy:v1.13.0 kube-scheduler:v1.13.0 kube-controller-manager:v1.13.0 kube-apiserver:v1.13.0 etcd:3.2.24 coredns:1.2.6 pause:3.1 kubernetes-dashboard-amd64:v1.10.0 kubernetes-dashboard-init-amd64:v1.0.1  k8s-dns-sidecar-amd64:1.14.9 k8s-dns-kube-dns-amd64:1.14.9 k8s-dns-dnsmasq-nanny:1.15.0 heapster:v1.5.2 flannel-amd64:0.5.5 kubernetes-dashboard-arm:v1.10.0)
for imageName in ${images[@]} ; do
docker pull xxlaila/$imageName
docker tag xxlaila/$imageName k8s.gcr.io/$imageName
docker rmi xxlaila/$imageName
done

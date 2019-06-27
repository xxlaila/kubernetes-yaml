#!/bin/bash
images=(heapster-grafana-amd64:v5.0.4 heapster-amd64:v1.5.4 heapster-influxdb-amd64:v1.5.2)
for imageName in ${images[@]} ; do
docker pull xxlaila/$imageName
docker tag xxlaila/$imageName k8s.gcr.io/$imageName
docker rmi xxlaila/$imageName
done

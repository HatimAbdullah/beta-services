#!/bin/bash
helm repo add stable https://kubernetes-charts.storage.googleapis.com
helm repo update
helm install prometheus-operator stable/prometheus-operator --namespace monitor --set grafana.service.type=NodePort

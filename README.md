# Must-Gather

This repo contains scripts and configuration for the managed-kafka must gather tooling.

## Running must-gather image locally

To run the must gather script locally

+ OC login to a cluster
+ Run ```oc adm must-gather  --image=<MUST-GATHER-IMAGE>```
+ The content will appear in a directory called ```must-gather.local.<RANDOM-ID>```

## Must-gather content

The must gather script will collect

+ All base k8s and openshift resources 
    + pods, pod logs, routes, configmaps, services, deployments etc.
+ In these namespaces
    + managed-application-services-observability.
    + openshift-ingress.
    + openshift-ingress-operator.
    + redhat-kas-fleetshard-operator.
    + redhat-managed-kafka-operator.
    + Any namespace with a kafka or managedkafka resource.
+ All managedkafka and kafka crs.
+ All podmonitors, prometheusrules, grafana, grafanadashboard, prometheus and observability crs in the managed-application-services-observability namespace.
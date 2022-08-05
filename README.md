# terraform-exoscale-sks_nodepool
https://registry.terraform.io/providers/exoscale/exoscale/latest/docs/resources/sks_nodepool

## namespace stuck on terminating
see https://stackoverflow.com/a/62421957
```bash
kubectl get namespace haproxy-controller -o json | grep -v '"kubernetes"' | kubectl replace --raw "/api/v1/namespaces/haproxy-controller/finalize" -f -
```
# Usage

### Please copy and paste below code 

```
module test-namespace {
    source = "../"
    namespace = "test-namespace"
    podlimit = "10"
    pod_max_cpu_limit = "2000m"
    pod_max_mem_limit = "4Gi"
    cont_max_cpu_limit = "1000m"
    cont_max_mem_limit = "2Gi"
    annotation = {
      managed_by = "terraform"
    }
    labels = {
      managed_by = "terraform"
    }
}
```

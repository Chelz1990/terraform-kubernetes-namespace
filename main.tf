resource "kubernetes_namespace" "example" {
  metadata {
    name = var.namespace
    annotations = var.annotation
    labels = var.labels
  }
}

resource "kubernetes_resource_quota" "example" {
  metadata {
    name = "podlimit"
    namespace = var.namespace
  }
  spec {
    hard = {
      pods = var.podlimit
    }
    scopes = ["BestEffort"]
  }
}

resource "kubernetes_limit_range" "example" {
  metadata {
    name = "limitranges"
    namespace = var.namespace
  }
  spec {
    limit {
      type = "Pod"
      max = {
        cpu    = var.pod_max_cpu_limit
        memory = var.pod_max_mem_limit
      }
    }
    limit {
      type = "Container"
      default = {
        cpu    = var.cont_max_cpu_limit
        memory = var.cont_max_mem_limit
      }
    }
  }
}


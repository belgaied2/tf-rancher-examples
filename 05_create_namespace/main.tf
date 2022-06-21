data "rancher2_cluster" "input_cluster" {
  name = var.cluster_name

}

data "rancher2_project" "input_project" {
  name = var.project_name
  cluster_id = data.rancher2_cluster.input_cluster.id
}

resource "rancher2_namespace" "ns" {
  name = var.ns_name
  project_id = data.rancher2_project.input_project.id
  
  description = "Example Namespace"
  resource_quota {
    limit {
      limits_cpu = "100m"
      limits_memory = "100Mi"
      requests_storage = "1Gi"
    }
  }
  container_resource_limit {
    limits_cpu = "20m"
    limits_memory = "20Mi"
    requests_cpu = "1m"
    requests_memory = "1Mi"
  }
}
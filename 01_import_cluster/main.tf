resource "rancher2_cluster" "create_imported_k3s_cluster" {
  name = var.cluster_name
  description = "Imported K3s cluster ${var.cluster_name}"
}
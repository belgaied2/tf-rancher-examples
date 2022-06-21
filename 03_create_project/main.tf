data "rancher2_cluster" "target_cluster" {
  name = var.project_cluster_name
}

resource "rancher2_cluster_sync" "waiting_for_cluster" {
  cluster_id = data.rancher2_cluster.target_cluster.id

}

resource "rancher2_project" "business_project" {
  cluster_id = rancher2_cluster_sync.waiting_for_cluster.id
  name = var.project_name
}
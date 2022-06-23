data "rancher2_cluster" "input_cluster" {
  name = var.cluster_name

}

data "rancher2_project" "input_project" {
  name = var.project_name
  cluster_id = data.rancher2_cluster.input_cluster.id
}

resource "rancher2_app" "app_example" {
  catalog_name = var.catalog_name
  name = var.app_name
  description = "Example App"
  project_id = data.rancher2_project.input_project.id
  template_name = var.template_name
  template_version = var.template_version
  target_namespace = var.target_namespace
  
}
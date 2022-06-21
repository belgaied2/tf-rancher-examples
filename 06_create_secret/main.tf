data "rancher2_cluster" "input_cluster" {
  name = var.cluster_name

}

data "rancher2_project" "input_project" {
  name = var.project_name
  cluster_id = data.rancher2_cluster.input_cluster.id
}

resource "rancher2_secret" "example_secret" {
  name = var.secret_name
  project_id = data.rancher2_project.input_project.id
  description = "Example Secret"
  data = {
    hello = base64encode("This is a secret")
  }
}
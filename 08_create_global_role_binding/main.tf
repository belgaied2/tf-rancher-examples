data "rancher2_user" "user" {
  username = var.user_short_name
}

data "rancher2_project" "target_project" {
  name = var.project_name
  cluster_id = data.rancher2_cluster.input_cluster.id
}

data "rancher2_cluster" "input_cluster" {
  name = var.cluster_name

}

resource "rancher2_global_role_binding" "global_role_bindings" {
  count = length(var.list_global_roles)
  name = var.list_global_roles[count.index].global_role_binding_name
  global_role_id = var.list_global_roles[count.index].global_role_id
  user_id = data.rancher2_user.user.id
}

resource "rancher2_project_role_template_binding" "rpoject_role_template_bindings" {
  name = "user-manage-configmaps"
  role_template_id = "configmaps-manage"
  user_id = data.rancher2_user.user.id
  project_id = data.rancher2_project.target_project.id

}
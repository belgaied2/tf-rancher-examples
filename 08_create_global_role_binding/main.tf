data "rancher2_user" "user" {
  username = var.user_short_name
}

resource "rancher2_global_role_binding" "clusters_create_role_binding" {
  name = "user-create-clusters"
  global_role_id = "clusters-create"
  user_id = data.rancher2_user.user.id
}

resource "rancher2_global_role_binding" "catalogs_use_role_binding" {
  name = "user-use-catalogs"
  global_role_id = "catalogs-use"
  user_id = data.rancher2_user.user.id
}
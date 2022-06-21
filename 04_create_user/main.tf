resource "rancher2_user" "user" {
  name = var.user_long_name
  username = var.user_short_name
  enabled = true
  password = var.user_password
}
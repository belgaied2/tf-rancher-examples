variable "rancher_url" {
  type = string
  description = "URL to the Rancher server"
}

variable "rancher_api_token" {
  type = string
  description = "API token to access Rancher API"
}

variable "rancher_ca" {
  type = string
  description = "CA Certificate for Rancher"
}

variable "kubeconfig_path" {
  type = string
  description = "Path to the Kubeconfig path to the target cluster"
  default = "$HOME/.kube/config"
}

variable "project_present" {
  type = bool
  description = "Boolean value to define if test project should exist, if project exists and this value is false, project will be removed."
  default = true
}

variable "test_user_present" {
  type = bool
  description = "Boolean value to define if test user should exist, if user exists and this value is false, user will be removed."
  default = true
}

variable "user_short_name" {
  type = string
  description = "Short name of the user to be created"
  default = "user-1"
}

variable "user_long_name" {
  type = string
  description = "Long name of the user to be created"
  default = "Max Mustermann"
}

variable "user_password" {
  type = string
  sensitive = true
  description = "Desired password for the local user"
}


variable "test_namespace_present" {
  type = bool
  description = "Boolean value to define if test namespace should exist, if namespace exists and this value is false, namespace will be removed."
  default = true
}


variable "test_secret_present" {
  type = bool
  description = "Boolean value to define if test secret should exist, if secret exists and this value is false, secret will be removed."
  default = true
}

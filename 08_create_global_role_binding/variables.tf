variable "user_short_name" {
  type = string
  description = "short name of the user that should receive the Global Role"
}

variable "list_global_roles" {
  type = list(object({
    global_role_id = string
    global_role_binding_name = string

  }))
  
}

variable "project_name" {
  type = string
  description = "Name of the project where to assign the role templates to the user"
}

variable "cluster_name" {
  type = string
  description = "Name of the cluster to which the project belongs"
}
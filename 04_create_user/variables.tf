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

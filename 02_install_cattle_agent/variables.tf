variable "import_command" {
  type = string
  description = "command to import cluster into Rancher, these manifests install the cattle-cluster-agent"
}

variable "kubeconfig_path" {
  type = string
  description = "Path to the Kubeconfig path to the target cluster"
  default = "$HOME/.kube/config"
}
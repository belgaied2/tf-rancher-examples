output "import_manifests" {
  value = rancher2_cluster.create_imported_k3s_cluster.cluster_registration_token[0].insecure_command
}
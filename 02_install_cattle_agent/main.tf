resource "null_resource" "local_execution" {
 
  provisioner "local-exec" {
    command = var.import_command
    environment = {
      KUBECONFIG = var.kubeconfig_path
    }
  }
}
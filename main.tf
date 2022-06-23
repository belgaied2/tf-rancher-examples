module "import_cluster" {
  source = "./01_import_cluster"
  cluster_name = "cluster-1"
}

module "install_cluster_agent" {
  source = "./02_install_cattle_agent"
  import_command = module.import_cluster.import_manifests
  kubeconfig_path = var.kubeconfig_path
}

module "create_project" {
  count = var.project_present ? 1 : 0
  source = "./03_create_project"
  project_cluster_name = "cluster-1"
  project_name = "test-project"
  depends_on = [
    module.install_cluster_agent
  ]
}

module "create_user" {
  count = var.test_user_present ? 1 : 0 
  source = "./04_create_user"
  user_short_name = var.user_short_name
  user_long_name = var.user_long_name
  user_password = var.user_password
}

module "create_namespace" {
  count = var.test_namespace_present ? 1 : 0
  source = "./05_create_namespace"
  ns_name = "test-ns"
  project_name = "test-project"
  cluster_name = "cluster-1"
}


module "create_secret" {
  count = var.test_secret_present ? 1 : 0
  source = "./06_create_secret"
  secret_name = "test-secret"
  project_name = "test-project"
  cluster_name = "cluster-1"
}


module "create_app" {
  count = var.test_app_present ? 1 : 0
  source = "./07_create_project_app"
  app_name = "custom-storage"
  project_name = "Default"
  cluster_name = "cluster-1"
  catalog_name = "library"
  template_name = "longhorn"
  template_version = "1.2.4"
  target_namespace = "longhorn-system"
  

}
provider "rancher2" {
  api_url = var.rancher_url
  token_key = var.rancher_api_token
  ca_certs = var.rancher_ca
}

terraform {
  required_providers {
    rancher2 = {
    source = "rancher/rancher2"
    version = "1.24.0"
  }
}
  }
 
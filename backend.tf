terraform {
  cloud {
    organization = "belgaied"

    workspaces {
      name = "tf-rancher2-examples"
    }
  }
}
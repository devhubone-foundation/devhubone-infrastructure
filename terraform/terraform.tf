terraform {
  required_version = "~> 1.9"

  required_providers {}

  backend "remote" {
    organization = "devhubone-foundation"

    workspaces {
      name = "devhubone-infrastructure"
    }
  }
}

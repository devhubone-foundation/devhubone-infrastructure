terraform {
  required_version = "~> 1.9"

  backend "remote" {
    organization = "devhubone-foundation"

    workspaces {
      name = "devhubone-infrastructure"
    }
  }
}

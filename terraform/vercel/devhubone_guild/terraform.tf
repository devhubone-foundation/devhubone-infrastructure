terraform {
  required_version = "~> 1.9"

  required_providers {
    vercel = {
      source  = "vercel/vercel"
      version = "~> 2.0"
    }
  }
}

provider "vercel" {
  team = "devhubone-foundation"
}


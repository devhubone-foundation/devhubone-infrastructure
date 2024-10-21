resource "github_repository_milestone" "devhubone_guild_base_infrastructure_configuration_milestone" {
  owner       = "devhubone-foundation"
  repository  = github_repository.repository.name
  title       = "DevHubOne Guild Base Infrastructure Configuration"
  description = "Complete describing existing infrastructure using Terraform, set up automated deployments, secret managers, etc."
  due_date    = "2024-12-01"
  state       = "open"
}

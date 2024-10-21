resource "github_repository_milestone" "devhubone_guild_feature_completeness_milestone" {
  owner       = "devhubone-foundation"
  repository  = github_repository.repository.name
  title       = "DevHubOne Guild Feature Completeness"
  description = "Complete the main functionalities of the DevHubOne Guild platform."
  due_date    = "2024-12-01"
  state       = "open"
}


resource "github_repository" "repository" {
  name         = "devhubone-guild"
  description  = "Guild and community management for DevHubOne."
  homepage_url = "https://guild.devhubone.com"
  topics       = ["web", "community-managment", "game-development", "nextjs", "nestjs", "nx", "devhubone"]

  visibility = "private"

  has_issues      = true
  has_projects    = true
  has_wiki        = false
  has_discussions = false

  allow_merge_commit          = false
  allow_squash_merge          = true
  allow_rebase_merge          = false
  allow_auto_merge            = false
  squash_merge_commit_title   = "PR_TITLE"
  squash_merge_commit_message = "COMMIT_MESSAGES"
  delete_branch_on_merge      = true

  allow_update_branch = true
}

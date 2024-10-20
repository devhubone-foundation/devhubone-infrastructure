resource "github_repository" "repository" {
  name        = "devhubone-infrastructure"
  description = "Infrastructure and configuration for DevHubOne projects."
  topics      = ["terraform", "infrastructure", "devhubone"]

  visibility = "public"

  has_issues      = true
  has_projects    = true
  has_wiki        = true
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

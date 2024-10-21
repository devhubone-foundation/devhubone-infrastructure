resource "github_branch_protection_v3" "main_branch_protection" {
  repository     = github_repository.repository.name
  branch         = "main"
  enforce_admins = false

  required_status_checks {
    strict = true
  }

  required_pull_request_reviews {
    dismiss_stale_reviews      = false
    require_code_owner_reviews = false
  }
}

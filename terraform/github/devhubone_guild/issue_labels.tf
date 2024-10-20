resource "github_issue_labels" "issue_labels" {
  repository = github_repository.repository.name

  label {
    name        = "feature"
    description = "New feature or request"
    color       = "A2EEEF"
  }

  label {
    name        = "refactor"
    description = "Refactor of existing code"
    color       = "0093B8"
  }

  label {
    name        = "bug"
    description = "Something isn't working"
    color       = "D73A4A"
  }

  label {
    name        = "ci"
    description = "Request regarding the project deployment"
    color       = "F777D1"
  }

  label {
    name        = "test"
    description = "Tasks regarding project testing"
    color       = "0E8A16"
  }

  label {
    name        = "question"
    description = "Further information is requested"
    color       = "D876E3"
  }

  label {
    name        = "documentation"
    description = "Improvements or additions to documentation"
    color       = "0075CA"
  }

  label {
    name        = "devhubone-guild-api"
    description = "Tasks regarding the backend DevHubOne Guild API"
    color       = "5319E7"
  }

  label {
    name        = "devhubone-guild-site"
    description = "Tasks regarding the frontend DevHubOne Guild site"
    color       = "2E9CFD"
  }

  label {
    name        = "duplicate"
    description = "This issue or pull request already exists"
    color       = "CFD3D7"
  }

  label {
    name        = "good first issue"
    description = "Good for newcomers"
    color       = "7057FF"
  }

  label {
    name        = "help wanted"
    description = "Extra attention is needed"
    color       = "008672"
  }

  label {
    name        = "invalid"
    description = "This doesn't seem right"
    color       = "E4E669"
  }

  label {
    name        = "wontfix"
    description = "This will not be worked on"
    color       = "FFFFFF"
  }
}

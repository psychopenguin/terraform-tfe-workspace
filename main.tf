resource "tfe_workspace" "workspace" {
  name              = var.name
  organization      = var.organization
  terraform_version = var.tf_version
  auto_apply        = var.auto_apply
  working_directory = var.working_directory

  vcs_repo {
    identifier     = var.vcs_identifier
    oauth_token_id = var.vcs_token_id
    branch         = var.vcs_branch
  }
}

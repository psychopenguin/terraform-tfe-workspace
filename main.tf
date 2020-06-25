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

resource "tfe_variable" "variable" {
  for_each     = toset(keys(var.variables))
  key          = each.value
  value        = lookup(var.variables[each.value], "value", "")
  category     = lookup(var.variables[each.value], "category", "terraform")
  description  = lookup(var.variables[each.value], "description", "")
  sensitive    = lookup(var.variables[each.value], "sensitive", false)
  hcl          = lookup(var.variables[each.value], "hcl", false)
  workspace_id = tfe_workspace.workspace.id
}

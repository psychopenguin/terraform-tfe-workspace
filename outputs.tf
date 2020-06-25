output "workspace_name" {
  description = "Workspace Name"
  value       = tfe_workspace.workspace.name
}

output "workspace_id" {
  description = "Workspace id"
  value       = tfe_workspace.workspace.id
}

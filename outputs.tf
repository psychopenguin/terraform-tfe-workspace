output "name" {
  description = "Workspace Name"
  value       = tfe_workspace.workspace.name
}

output "id" {
  description = "Workspace id"
  value       = tfe_workspace.workspace.id
}

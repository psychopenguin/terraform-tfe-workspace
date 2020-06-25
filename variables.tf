variable "name" {
  type        = string
  description = "Workspace Name"
}
variable "organization" {
  type        = string
  description = "Organization that this workspace belongs to"
}

variable "tf_version" {
  type        = string
  description = "Terraform Version to be used in this workspace"
  default     = "latest"
}

variable "auto_apply" {
  type        = bool
  description = "Enable auto apply"
  default     = false
}

variable "vcs_identifier" {
  type        = string
  description = "Repository to be used in the format :org/:repo"
}

variable "vcs_token_id" {
  type        = string
  description = "token id to used to connect to repository"
}

variable "vcs_branch" {
  type        = string
  description = "Branch to used for this workspace"
  default     = ""
}

variable "working_directory" {
  type        = string
  description = "Working directory, relative to root path of VCS repo"
  default     = ""
}

variable "variables" {
  type        = map(any)
  description = "List of variables to be defined"
  default     = {}
  # Example:
  # variables = {
  #   "sample_variable": {
  #     "value": "sample_value",
  #     "category": "terraform"
  #   },
  #   "SAMPLE_ENV_VAR": {
  #     "value": "some_secret_value",
  #     "category": "env",
  #     "sensitive": true
  #   }
  # }
}

variable "run_trigger_workspaces" {
  type        = set(string)
  description = "List of workspaces that will trigger a run in case of changes"
  default     = []
}

variable "project" { }
variable "runname" {}
variable "vpc_name" {}
variable "project_id" { }
variable "region" {}
variable "source_repo_name" {}
variable "trigger_name" {}
variable "gke_staging_name"{}
variable "gke_prod_name"{}
variable "iam_roles" {
  description = "Roles that will be added to service account"
  type        = list(string)
  default     = ["roles/iam.serviceAccountUser", "roles/clouddeploy.operator", "roles/run.admin"]
}
variable "repository_id" {
  description = "mane of the repo"
  type        = string
}
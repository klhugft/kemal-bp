resource "google_sourcerepo_repository" "kemal-repo" {
  name = var.source_repo_name
  project = var.project
  
}
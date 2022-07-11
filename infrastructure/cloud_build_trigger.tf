resource "google_cloudbuild_trigger" "kemal-trigger" {
    project = var.project
    name = var.trigger_name
  trigger_template {
    branch_name = "main"
    repo_name   = google_sourcerepo_repository.kemal-repo.name
    project_id = var.project
  }

  substitutions = {
    _FOO = "bar"
    _BAZ = "qux"
  }

  filename = "cloudbuild.yaml"
}
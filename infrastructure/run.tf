resource "google_cloud_run_service" "cloudrun" {
  name     = var.runname
  location = var.region
  project = var.project

  template {
    spec {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}
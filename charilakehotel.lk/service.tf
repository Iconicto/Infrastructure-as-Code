resource "google_cloud_run_service" "default" {
  name                       = var.service_name
  location                   = var.region
  autogenerate_revision_name = true

  metadata {
    annotations = {
      "run.googleapis.com/client-name"   = "terraform"
    }
    namespace = var.project
  }

  template {
    metadata{
      annotations = {
        "autoscaling.knative.dev/maxScale" = "2"
      }
    }
    spec {
      container_concurrency = 200
      timeout_seconds = 10
      containers {
        image = var.image
        ports {
          name           = "http1"
          container_port = 8000
        }

        resources {
          limits = {
            cpu    = "1000m"
            memory = "256Mi"
          }
        }
      }

    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }


}


data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location = google_cloud_run_service.default.location
  project  = google_cloud_run_service.default.project
  service  = google_cloud_run_service.default.name

  policy_data = data.google_iam_policy.noauth.policy_data
  depends_on  = [google_cloud_run_service.default]
}

resource "google_cloud_run_domain_mapping" "default" {
  location = google_cloud_run_service.default.location
  name     = var.domain

  metadata {
    namespace = var.project
  }

  spec {
    route_name = google_cloud_run_service.default.name
  }

  depends_on = [google_cloud_run_service.default]
}
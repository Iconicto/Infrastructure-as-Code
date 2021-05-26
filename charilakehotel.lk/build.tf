resource "google_cloudbuild_trigger" "cloud-build" {
  github {
    owner = var.github_owner
    name = var.github_repository
    push{
        branch = var.github_branch
    }
  }

  name = "Deploy-${var.service_name}"
  description = "Deploy ${var.service_name} to cloud run"

  filename = "cloudbuild.yaml"
}
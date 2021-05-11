provider "google" {
  project = var.project
  region  = var.region
}

module "isala_me" {
  source       = "./isala.me"
  project      = var.isala_me.project
  region       = var.isala_me.region
  service_name = var.isala_me.service_name
  image        = var.isala_me.image
  domain       = var.isala_me.domain
  github_owner = var.isala_me.github_owner
  github_repository = var.isala_me.github_repository
  github_branch = var.isala_me.github_branch
}

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

module "chari_lake" {
  source       = "./charilakehotel.lk"
  project      = var.chari_lake.project
  region       = var.chari_lake.region
  service_name = var.chari_lake.service_name
  image        = var.chari_lake.image
  domain       = var.chari_lake.domain
  github_owner = var.chari_lake.github_owner
  github_repository = var.chari_lake.github_repository
  github_branch = var.chari_lake.github_branch
}

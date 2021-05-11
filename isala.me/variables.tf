variable "project" {
  type        = string
  description = "Google Cloud Platform Project ID"
}

variable "region" {
  type        = string
  description = "Google Cloud Region"
}

variable "service_name" {
  type        = string
  description = "Cloud Run Serivce name"
}

variable "image" {
  type        = string
  description = "Cloud Run Serivce name"
}


variable "domain" {
  type        = string
  description = "Domain getting mapped to the service"
}

variable "github_owner" {
  type        = string
  description = "Owner of the github repository"
}

variable "github_repository" {
  type        = string
  description = "Name of the github repository"
}

variable "github_branch" {
  type        = string
  description = "Branch to watch for new code"
}

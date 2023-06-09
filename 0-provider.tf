# https://www.terraform.io/language/settings/backends/gcs
terraform {
  # backend "gcs" {
  #   bucket = var.bucket_tfstate
  #   prefix = "terraform/state"
  # }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone-a
}
# setup the GCP provider | provider.tf

terraform {
  required_version = ">= 0.12"
}

provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region_1
  zone    = var.gcp_zone_1
}

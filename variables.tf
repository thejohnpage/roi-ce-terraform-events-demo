
variable "project_id" {
  type        = string
  description = "GCP Project ID"
}
variable "container_registry" {
  type        = string
  description = "Docker image for web-server service"
}

variable "web-server_image_name" {
  type        = string
  description = "Docker image for web-server service"
}

variable "api-server_image_name" {
  type        = string
  description = "Docker image for internal service"
}

variable "gcp_region_1" {
  type        = string
  description = "GCP Region"
}

# define GCP zone
variable "gcp_zone_1" {
  type        = string
  description = "GCP Zone"
}

variable "app_name" {
  type        = string
  description = "Application Name"
}
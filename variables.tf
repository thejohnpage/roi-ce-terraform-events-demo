
variable "project_id" {
  type        = string
  description = "GCP Project ID"
}
variable "container_registry" {
  type        = string
  description = "Container Registry for Docker image for web-server service"
}

variable "web-server_image_name" {
  type        = string
  description = "Docker image name for web-server service"
}

variable "web-server_image_version" {
  type        = string
  description = "Docker image version tag for web-server service"
}

variable "api-server_image_name" {
  type        = string
  description = "Docker image for internal service"
}

variable "api-server_image_version" {
  type        = string
  description = "Docker image version tag for api-server service"
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

variable "node_machine_type" {
  type        = string
  description = "Node Machine Type"
}

variable "app_name" {
  type        = string
  description = "Application Name"
}

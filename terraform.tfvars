# GCP Settings. Check image versions
project_id          = "<your google project id>" # Enter your project ID here. Remove < & >
container_registry  = "gcr.io"
web-server_image_name = "web-server-image"
web-server_image_version = "v1.0.0"
api-server_image_name = "api-server-image"
api-server_image_version = "v1.0.0"

# The image used by the deployments will be a URL created from 
# combining the above vars. For Example: 
# container_registry/project_id/web-server_image_name:web-server_image_version

gcp_region_1 = "us-central1"
gcp_zone_1   = "us-central1-c"

# Application Name (used in resource names, no spaces.)
app_name = "events-app"


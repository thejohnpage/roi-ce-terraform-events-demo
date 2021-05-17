resource "kubernetes_deployment" "events-api-server-deployment" {
  metadata {
    name = "events-api-server-deployment"
    labels = {
      App = "events-api-server"
    }
    namespace = kubernetes_namespace.events_ns.metadata[0].name
  }

  spec {
    replicas                  = 2
    progress_deadline_seconds = 60
    selector {
      match_labels = {
        App = "events-api-server"
      }
    }
    template {
      metadata {
        labels = {
          App = "events-api-server"
        }
      }
      spec {
        container {
          image = "${var.container_registry}/${var.project_id}/${var.api-server_image_name}"
          name  = "events-api-server"

          env {
            name  = "GOOGLE_CLOUD_PROJECT"
            value = var.project_id
          }
          port {
            container_port = 8082
          }
        }
      }
    }
  }
}
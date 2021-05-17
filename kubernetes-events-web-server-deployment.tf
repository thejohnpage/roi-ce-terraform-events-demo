resource "kubernetes_deployment" "events-web-server-deployment" {
  metadata {
    name = "events-web-server-deployment"
    labels = {
      App = "events-web-server"
    }
    namespace = kubernetes_namespace.events_ns.metadata[0].name
  }

  spec {
    replicas                  = 2
    progress_deadline_seconds = 90
    selector {
      match_labels = {
        App = "events-web-server"
      }
    }
    template {
      metadata {
        labels = {
          App = "events-web-server"
        }
      }
      spec {
        container {
          image = "${var.container_registry}/${var.project_id}/${var.web-server_image_name}"
          name  = "events-web-server"

          env {
            name  = "API_SERVER"
            value = "http://events-api-server-service:8082"
          }
          port {
            container_port = 8080
          }
        }
      }
    }
  }
}
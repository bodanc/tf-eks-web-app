resource "kubernetes_service" "mongodb" {
  metadata {
    name      = "mongodb"
    namespace = var.kubernetes_namespace

    labels = {
      name = "mongodb"
    }
  }

  spec {
    port {
      port        = 27017
      target_port = "27017"
    }

    selector = {
      name = "mongodb"
    }

    type = "LoadBalancer"
  }
}

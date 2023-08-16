resource "kubernetes_deployment" "mongodb" {
  metadata {
    name      = "mongodb"
    namespace = var.kubernetes_namespace
    labels = {
      name = "mongodb"
    }
  }

  spec {
    replicas = 20

    selector {
      match_labels = {
        name = "mongodb"
      }
    }

    template {
      metadata {
        labels = {
          name = "mongodb"
        }
      }

      spec {
        volume {
          name = "mongodb-vol"

          persistent_volume_claim {
            claim_name = "mongodb-pvc"
          }
        }

        container {
          name  = "mongo"
          image = "mongo"

          port {
            name           = "mongodb"
            container_port = 27017
          }

          volume_mount {
            mount_path = "/mnt/data/db"
            name       = "mongodb-vol"
          }
        }
      }
    }
  }
}

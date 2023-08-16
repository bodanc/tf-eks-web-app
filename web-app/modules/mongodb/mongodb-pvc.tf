resource "kubernetes_persistent_volume_claim" "mongodb-pvc" {
  metadata {
    name      = "mongodb-pvc"
    namespace = var.kubernetes_namespace
  }

  spec {
    storage_class_name = "mongodb-sc"
    access_modes       = ["ReadWriteOnce"]

    resources {
      requests = {
        storage = "8Gi"
      }
    }
  }
}

resource "kubernetes_persistent_volume" "mongodb-pv" {
  metadata {
    name = "mongodb-pv"
  }

  spec {
    access_modes = ["ReadWriteOnce"]
    capacity = {
      storage = "10Gi"
    }

    persistent_volume_reclaim_policy = "Retain"
    storage_class_name               = "mongodb-sc"

    persistent_volume_source {
      host_path {
        path = "/mnt/data"
      }
    }
  }
}

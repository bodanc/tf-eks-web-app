resource "kubernetes_storage_class" "mongodb_sc" {
  storage_provisioner = "kubernetes.io/aws-ebs"
  reclaim_policy      = "Retain"
  parameters = {
    fsType = "ext4"
    type   = "gp2"
  }

  metadata {
    name = "mongodb-sc"
    annotations = {
      "storageclass.kubernetes.io/is-default-class" = "true"
    }
  }
}

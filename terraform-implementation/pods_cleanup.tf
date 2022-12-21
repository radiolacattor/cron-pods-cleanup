resource "kubernetes_manifest" "pods_cleanup" {
  count    = length(local.pods_cleanup)
  manifest = local.pods_cleanup[count.index]
}

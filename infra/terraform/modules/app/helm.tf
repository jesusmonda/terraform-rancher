resource "helm_release" "mongodb" {
  name       = "mongodb"
  repository = "https://charts.bitnami.com/bitnami" 
  chart      = "mongodb"
  namespace  = var.environment
  version = "9.0.0"

  values = [
    templatefile("../helm/value_mongodb.yaml", {})
  ]
}
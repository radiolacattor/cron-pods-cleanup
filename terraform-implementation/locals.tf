locals {
  pods_cleanup = [for file in split("---", file("./cron.yaml")) : yamldecode(file)]
}

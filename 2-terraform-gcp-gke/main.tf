resource "google_container_cluster" "primary" {
  project  = var.project
  name     = var.name
  location = var.location

  deletion_protection = false

  remove_default_node_pool = false
  initial_node_count       = 1
  gateway_api_config {
    channel = var.channel
  }
  node_config {
    machine_type = var.node_config.machine_type
    disk_size_gb = var.node_config.disk_size_gb
  }
}
# # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
# resource "google_compute_router" "router" {
#   name    = "${var.proj_name}-router"
#   region  = var.region
#   network = google_compute_network.vpc.id
# }

module "cloud_router" {
  source  = "terraform-google-modules/cloud-router/google"
  version = "~> 5.0"
  project = var.project
  region  = var.region
  name    = "${var.proj_name}-cloud-router"
  network = google_compute_network.vpc.name


  nats = [{
    name = "${var.proj_name}-nat-gateway"
  }]
}
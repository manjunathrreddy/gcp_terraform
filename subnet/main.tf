resource "google_compute_network" "home_network" {
    name = "home-network"
    auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "home_sub_network" {
    name = "home-sub-subnetwork"
    ip_cidr_range = "10.2.0.0/16"
    region = "us-central1"
    network = "${google_compute_network.home_network.self_link}"
}

resource "google_compute_firewall" "allow-http-port" {
    name = "allow-http-port"
    network = "udemy"

    allow {
        protocol = "tcp"
        ports = ["80"]
    }

    target_tags = ["allow-http"]
      
}

resource "google_compute_firewall" "allow-https-port" {
    name = "allow-https-port"
    network = "udemy"

    allow {
        protocol = "tcp"
        ports = ["443"]
    }

    target_tags = ["allow-https"]
      
}
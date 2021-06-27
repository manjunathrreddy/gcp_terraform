provider "google" {
    project = "gcp-homecompany-dev"
    region = "us-central1"
    zone = "us-central1-a"
    credentials = "${file("${var.path}/${var.credentials_file}")}"
}
provider "google" {
    project = "${var.project_id}"
    region = "asia-south1"
    zone = "asia-south1-a"
    credentials = "${file("${var.path}/${var.credentials_file}")}"
  
}
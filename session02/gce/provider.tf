variable "path" {  default = "/home/vagrant/gcp_credentials/keys" }

provider "google" {
    project = "triple-virtue-271517"
    version = "~> 3.38.0"
    region = "us-central1"
    zone = "us-central1-a"
    credentials = "${file("${var.path}/triple-virtue.json")}"
  
}
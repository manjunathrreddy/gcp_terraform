variable "path" {  default = "/home/vagrant/gcp_credentials/keys" }

provider "google" {
    project = "triple-virtue-271517"
    region = "asia-south1"
    zone = "asia-south1-a"
    credentials = "${file("${var.path}/triple-virtue.json")}"
  
}

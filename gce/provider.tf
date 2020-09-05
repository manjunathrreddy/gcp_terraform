variable "path" {  default = "/home/cicd-user/gcp_credentials/keys" }

provider "google" {
    project = "triple-virtue-271517"
    region = "asia-south1"
    zone = "asia-south1-a"
    version = "~> 2.17"
    credentials = "${file("${var.path}/triple-virtue.json")}"
  
}


variable "path" {default = "/home/cicd-user/gcp_credentials/keys"}

provider "google" {
    project = "festive-zoo-239708"
    region = "europe-west2-a"
    credentials = "${file("${var.path}/credentials.json")}"
}
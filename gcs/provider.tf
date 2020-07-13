variable "path" {  default = "/home/cicd-user/gcp_credentials/keys" }

provider "google" {
    project = "eternal-trainer-154709"
    region = "asia-south1-a"
    credentials = "${file("${var.path}/credentials.json")}"
  
}

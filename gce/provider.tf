variable "path" {  default = "/home/manjunath/Documents/terraform/udemy_terraform/credentials" }

provider "google" {
    project = "eternal-trainer-154709"
    region = "asia-south1-a"
    credentials = "${file("${var.path}/secrets.json")}"
  
}

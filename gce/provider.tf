variable "path" {  default = "/home/vagrant/gcp_credentials/keys" }

provider "google" {
    project = "snappy-cosine-198513"
    region = "asia-south1-a"
    credentials = "${file("${var.path}/credentials.json")}"
  
}

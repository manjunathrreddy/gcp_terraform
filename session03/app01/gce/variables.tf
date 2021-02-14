variable "test_servers" { 
    type = list(any) 
}

variable "disk_zone" { default = "" }

variable "disk_type" { default = "" }

variable "disk_name" { default = "" }

variable "disk_size" { default = "" }

variable "project_id" { default = "" }

variable "credentials_file" { default = "" }

variable "path" {  default = "/home/vagrant/gcp_credentials/keys" }
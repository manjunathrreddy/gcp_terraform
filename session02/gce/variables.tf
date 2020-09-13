variable "image" {  default = "centos-8" }
variable "machine_type" { default = "n1-standard-1" }
variable "name_count" { default = ["server-1","server-2","server-3"]}
variable "environment" { default = "production" }
variable "machine_type_dev" { default = "n1-standard-4" }
variable "machine_count" { default = "1" }
variable "machine_size" { default = "20" }
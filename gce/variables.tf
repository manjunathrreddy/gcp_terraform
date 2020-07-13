variable "test_servers" { 
    type = list(any)  
    default = 0
}

variable "disk_zone" { default = "" }

variable "disk_type" { default = "" }

variable "disk_name" { default = "" }

variable "disk_size" { default = "" }
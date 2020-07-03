variable "instance_servers {
    type = list(any)
}

variable "disk_zone" {
    type = string
    default = ""

}

variable "disk_type" {
    type = string
    default = ""

}

variable "disk_name" {
    type = string
    default = ""
    
}

variable "disk_size" {
    type = string
    default = ""

}
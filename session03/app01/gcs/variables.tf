variable "project" {
    type = string
    description = "Project ID"
}

variable "bucket_encrypt" {
    type list(string)
    defaualt = []
}

variable "storage_class"{
    type = string
    description = "Starage class definition"
    default = "STANDARD" 
}

variable "data_class" {
    type = string
    description = "Data classification level - Allowed values : class-1, class-2, class-3"
}

variable "team_name" {
    type = string
    description = "Team name. Must be alphanumerical"

}

variable "encryption_link" {
    type = string
    description = "Link to the google keys"

}

variable "versioning" {
    type = bool
    description = "Enable versioning for the bucket"
    default = true
}

variable "region" {
    type = string
    description = "GCP region"
    default = "us-east4"
}

variable "region_zone" {
    type = string
    description = "GCP zone"
    default = "us-east4-b"
}

variable "env" {
    type = string
    description = "GCP Env"
    default = ""
}


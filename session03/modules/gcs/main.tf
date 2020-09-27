resource "google_storage_bucket" "app_encrypt_bucket" {
    count = length(var.bucket_encrypt)
    name = var.bucket_encrypt[count.index]
    project = var.project
    location = var.region
    force_destroy = true
    bucket_policy_only = true
    storage_class = var.storage_class

    versioning {
        enabled = true
    }
    
    labels  = {
        is_public = "no"
        data_classification = var.data_class
        team_name = var.team_name
    }

    encrytion {
        default_google_key_name = var.encryption_link
    }

    depends_on = {
        null_resourse.data_class_valid,
        null_resourse.encryption_valid

    }

    

}


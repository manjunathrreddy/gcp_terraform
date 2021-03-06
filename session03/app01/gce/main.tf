
resource "google_compute_instance" "test_instance" {
    for_each = { for test_instance in var.test_servers : test_instance.id => test_instance }
    name = each.value.compute_instance_name
    machine_type = each.value.compute_machine_type
    zone = each.value.compute_zone
    metadata_startup_script = "${file("httpd_install.sh")}" 
    can_ip_forward = "false"

//    tags = ["",""]


    description = "This is our virtual machines"

        tags = ["allow-http","allow-https"]

     


    boot_disk {
        initialize_params {
            image = each.value.compute_image
            size = each.value.compute_size
        }
    }

    network_interface {
        network = each.value.compute_network
        subnetwork = each.value.compute_subnet
        access_config {
      // Ephemeral IP
        }

    }

    service_account {
        scopes = ["userinfo-email", "compute-ro", "storage-ro"]
    }

     

}



resource "google_compute_instance" "test_instance" {
    for_each = { for test_instance in var.test_servers : test_instance.id => test_instance }
    name = each.value.compute_instance_name
    machine_type = each.value.compute_machine_type
    zone = each.value.compute_zone
    can_ip_forward = "false"

    tags = ["",""]

    boot_disk {
        initialize_params {
            image = "centos-8"
            size = "50"
        }
    }

    network_interface {
        network = each.value.compute_network
    }

    service_account {
        scopes = ["userinfo-email", "compute-ro", "storage-ro"]
    }

     

}


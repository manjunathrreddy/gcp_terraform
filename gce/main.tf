data "google_compute_image" "test_image" {
    family = "app-family"
    project = "snappy-cosine-198513"


}

resource "google_compute_instance" "test_instance" {
    for_each = { for test_instance in var.test_servers : test_instance.id => test_instance }
    name = each.value.compute_instance_name
    machine_type = each.value.compute_machine_type
    zone = each.value.compute_zone
    can_ip_forward = "false"

    tags = ["",""]

    boot_disk {
        initialize_params {
            image = data.google_compute_image.self_link
            size = each.value.compute_size
        }
    }

    network_interface {
        network = each.value.compute_network
    }

    service_account {
        scopes = ["userinfo-email", "compute-ro", "storage-ro"]
    }

     

}

resource "google_compute_disk" "compute_disk" {
    name = var.disk_name
    type = var.disk_type
    zone = var.disk_zone
    size = var.disk_size
}

resource "google_compute_attached_disk" "additional_attached_disk" {
    count = length(var.test_servers)
    disk = google_compute_disk.compute_disk.self_link
    instance = google_compute_instance.test_servers[count.index+1].self_link
    
}


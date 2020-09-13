
resource "google_compute_instance" "default" {
    
    count = var.machine_count
    name = "list-${count.index+1}"
    machine_type = var.environment != "production" ? var.machine_type : var.machine_type_dev
    metadata_startup_script = "${file("httpd_install.sh")}" 
    

    zone = "asia-south1-a"
    can_ip_forward = "false"
    description = "This is our virtual machines"

        tags = ["allow-http","allow-https"]

  


    boot_disk {
        initialize_params {
            image = var.image
            size = var.machine_size
        }
    }


    network_interface {
        network = "default"
    }


    metadata = {
        size = "20"
        foo = "bar"
    }
}
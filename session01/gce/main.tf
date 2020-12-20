
variable "path" {  default = "/home/vagrant/gcp_credentials/keys" }

provider "google" {
    project = "triple-virtue-271517"
    version = "~> 3.38.0"
    region = "us-central1"
    zone = "us-central1-a"
    credentials = "${file("${var.path}/triple-virtue.json")}"
  
}

resource "google_compute_firewall" "allow-http-port" {
    name = "allow-http-port"
    network = "default"

    allow {
        protocol = "tcp"
        ports = ["80"]
    }

    target_tags = ["allow-http"]
      
}

resource "google_compute_firewall" "allow-https-port" {
    name = "allow-https-port"
    network = "default"

    allow {
        protocol = "tcp"
        ports = ["443"]
    }

    target_tags = ["allow-https"]
      
}


resource "google_compute_instance" "test_instance" {
    
    name            = "demo-01"
    machine_type    = "e2-standard-2"
    zone            = "us-central1-a"
    metadata_startup_script = <<-EOF
    sudo yum update 
    sudo yum install httpd -y
    sudo systemctl start httpd
    sudo systemctl start httpd
    sudo systemctl enable httpd
    EOF

    tags = ["allow-http","allow-https"]

    boot_disk {
      
    initialize_params{

          image           = "centos-8"
          size            = "100"
            

        }
    }

    network_interface {
        network = "default"
    
            access_config {
      // Ephemeral IP
        }
    }

    service_account {
        scopes = ["userinfo-email", "compute-ro", "storage-ro"]
    }

}

output "machine_type" {
  value = "${google_compute_instance.test_instance.machine_type}"
}

output "name" {
  value = "${google_compute_instance.test_instance.name}"
}
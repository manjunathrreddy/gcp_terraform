
variable "path" {  default = "/home/vagrant/gcp_credentials/keys" }

provider "google" {
    project = "triple-virtue-271517"
    region = "asia-south1"
    zone = "us-central1-a"
    credentials = "${file("${var.path}/triple-virtue.json")}"
  
}

resource "google_compute_instance" "test_instance" {
    
    name            = "demo-01"
    machine_type    = "e2-standard-2"
    zone            = "us-central1-a"
    metadata_startup_script = <<-EOF
    #!/bin/bash
    yum update 
    yum install httpd
    systemctl start httpd
    systemctl enable httpd
    EOF

    tags = ["web"]

    boot_disk {
      
    initialize_params{

          image           = "centos-8"
          size            = "100"
            

        }
    }

    network_interface {
        network = "default"
    }

}

resource "google_compute_firewall" "default" {
  name = "testfirewall"
  network = "default"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000"]
  }

  source_tags = ["web"]
}


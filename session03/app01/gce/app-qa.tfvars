credentials_file = "gcp-homecompany-qa-key.json"
project_id = "gcp-homecompany-qa"

test_servers = [{
    id = 1
    compute_instance_name = "demo1"
    compute_machine_type = "e2-standard-2"
    compute_image = "centos-8"
    compute_network = "home-network"
    compute_subnet = "home-sub-subnetwork"
    compute_zone = "us-central1-a"
    compute_size = "100"
},
{
    id = 2
    compute_instance_name = "demo2"
    compute_machine_type = "e2-standard-2"
    compute_image = "centos-8"
    compute_network = "home-network"
    compute_subnet = "home-sub-subnetwork"
    compute_zone = "us-central1-a"
    compute_size = "100"
},
{
    id = 3
    compute_instance_name = "demo3"
    compute_machine_type = "e2-standard-2"
    compute_image = "centos-8"
    compute_network = "home-network"
    compute_subnet = "home-sub-subnetwork"
    compute_zone = "us-central1-a"
    compute_size = "100"
}]

disk_zone = "us-east1-b"
disk_type = "pd-ssd"
disk_name = "additional volume disk"
disk_size = "150"
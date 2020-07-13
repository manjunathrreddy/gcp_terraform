project_id = "snappy-cosine-198513"

test_servers = [{
    id = 1
    compute_instance_name = "Test-Instance"
    compute_machine_type = "e2-standard-2"
    compute_image = "c0-common-gce-gpu-image-20200128"
    compute_network = "home-net-dev"
    compute_subnet = "home-net-ds-dev"
    compute_zone = "us-east2-a"
    compute_size = "100"
}]

disk_zone = "us-east1-b"
disk_type = "pd-ssd"
disk_name = "additional volume disk"
disk_size = "150"
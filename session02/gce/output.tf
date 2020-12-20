output "machine_type" {
  value = "${google_compute_instance.test_instance.machine_type}"
}

output "name" {
  value = "${google_compute_instance.test_instance[var.name_count+1].name}"
}
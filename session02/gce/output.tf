output "machine_type" {
  value = "${google_compute_instance.test_instance[var.name_count].machine_type}"
}

output "name" {
  value = "${google_compute_instance.test_instance[var.name_count].name}"
}
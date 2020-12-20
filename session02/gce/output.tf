output "machine_type" {
  value = "${google_compute_instance.test_instance[count].machine_type}"
}

output "name" {
  value = "${google_compute_instance.test_instance[count].name}"
}
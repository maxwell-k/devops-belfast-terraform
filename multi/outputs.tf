output "address" {
  value = "${aws_instance.managed.public_dns}"
}

output "id" {
  value = "${aws_instance.managed.id}"
}

output "gcp_ip" {
  value = "${google_compute_instance.example.network_interface.0.access_config.0.nat_ip}"
}

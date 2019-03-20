output "aws_public_dns" {
  value = "${aws_instance.managed.public_dns}"
}

output "gcp_ip" {
  value = "${google_compute_instance.example.network_interface.0.access_config.0.nat_ip}"
}

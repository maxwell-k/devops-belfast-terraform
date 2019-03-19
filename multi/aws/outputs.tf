output "address" {
  value = "${aws_instance.managed.public_dns}"
}

output "id" {
  value = "${aws_instance.managed.id}"
}

output "gcp_ip" {
  value = "${module.gcp.ip}"
}

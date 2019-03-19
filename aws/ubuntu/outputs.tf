output "id" {
  value = "${data.aws_ami.selected.id}"
}

output "user" {
  value = "ubuntu"
}

output "python" {
  value = "/usr/bin/python3"
}

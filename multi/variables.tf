variable "public_key_path" {
  default = "~/.ssh/google_compute_engine.pub"
}

variable "disk_size" {
  default = 8
}

variable "instance_type" {
  default = "t3.micro"
}

module "ami" {
  source = "../ubuntu"
}

provider "aws" {
  version = "~> 1.23"
  region  = "eu-west-2"
}

resource "aws_key_pair" "default" {
  public_key = "${file("${var.public_key_path}")}"
}

resource "aws_instance" "managed" {
  ami                    = "${module.ami.id}"
  instance_type          = "${var.instance_type}"
  key_name               = "${aws_key_pair.default.id}"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]

  credit_specification {
    cpu_credits = "standard"
  }

  root_block_device = {
    volume_type = "gp2"
    volume_size = "${var.disk_size}"
  }

  tags = {
    Name = "${basename(path.module)}"
  }
}

resource "aws_default_vpc" "default" {}

resource "aws_security_group" "default" {
  vpc_id = "${aws_default_vpc.default.id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${google_compute_instance.example.network_interface.0.access_config.0.nat_ip}/32"]
    description = "Allow SSH access from GCP only"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow internet access"
  }
}

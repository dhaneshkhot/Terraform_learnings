provider "aws" {
  region = "ap-south-1"
}

resource "aws_security_group" "allow_all" {
  name = "terraform-allow_all"
  # Outbound all
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # Inbound all
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "MyFirstInstance" {
  count           = 1
  ami             = "ami-0aa4317636e016115" # red hat 7.5
  instance_type   = "t2.micro"
  key_name        = "login-key-pair" # This key is to be created and downloaded from console
  security_groups = ["terraform-allow_all"]

  root_block_device {
    volume_type = "gp2"
    volume_size = "30"
  }

  tags = {
    Name = "Cluster"
  }
  depends_on = [aws_security_group.allow_all]
}



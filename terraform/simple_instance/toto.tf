provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "arm" {
  name        = "arm_name"
  description = "Allow leet inbound traffic"
  ingress {
    description = "leet"
    from_port   = 1337
    to_port     = 1337
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

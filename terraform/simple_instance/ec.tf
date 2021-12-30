provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "armand" {
  name        = "armand"
  description = "Allow armand inbound traffic"
  ingress {
    description = "armand"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

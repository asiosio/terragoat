provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "armand_traffic" {
  name        = "armand_traffic"
  description = "Allow armand inbound traffic"
  ingress {
    description = "leet"
    from_port   = 1337
    to_port     = 1337
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "armand" {
  name        = "armand_lol"
  description = "Allow SSH inbound traffic"
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

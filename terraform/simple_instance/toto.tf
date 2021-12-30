provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "eee" {
  name        = "eee"
  description = "Allow armand inbound traffic"
  ingress {
    description = "e"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

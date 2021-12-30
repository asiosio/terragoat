provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "asio_traffic" {
  name        = "asio_traffic"
  description = "Allow leet inbound traffic"
  ingress {
    description = "Leet"
    from_port   = 1337
    to_port     = 1337
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

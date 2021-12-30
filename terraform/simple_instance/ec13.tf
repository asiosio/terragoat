provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "mytraffic" {
  name        = "mytraffic"
  description = "Allow SSH inbound traffic"
  ingress {
    description = "my"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    git_commit           = "9bf0bce459ff53bad823f40c890c4024ccfcff30"
    git_file             = "terraform/simple_instance/ec13.tf"
    git_last_modified_at = "2021-12-30 10:49:28"
    git_last_modified_by = "91682683+asiosio@users.noreply.github.com"
    git_modifiers        = "91682683+asiosio"
    git_org              = "asiosio"
    git_repo             = "terragoat"
    yor_trace            = "d6c1e51f-c038-4b38-ab65-8f8f1d107820"
  }
}

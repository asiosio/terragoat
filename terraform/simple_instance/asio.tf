provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "eee" {
  name        = "eee"
  description = "Allow armand inbound traffic"
  ingress {
    description = "e"
    from_port   = 1337
    to_port     = 1337
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    git_commit           = "33ac77de63052c42358bc49f01b91ae60f31b801"
    git_file             = "terraform/simple_instance/asio.tf"
    git_last_modified_at = "2021-12-30 12:11:34"
    git_last_modified_by = "91682683+asiosio@users.noreply.github.com"
    git_modifiers        = "91682683+asiosio"
    git_org              = "asiosio"
    git_repo             = "terragoat"
    yor_trace            = "3abdfb82-8010-4226-859e-1f4caa7c5825"
  }
}

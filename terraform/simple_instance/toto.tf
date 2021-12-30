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
  tags = {
    git_commit           = "d0b9d75ba5d3a4d9beb6ca6ff11c7df1e2ec3432"
    git_file             = "terraform/simple_instance/toto.tf"
    git_last_modified_at = "2021-12-30 12:18:41"
    git_last_modified_by = "91682683+asiosio@users.noreply.github.com"
    git_modifiers        = "91682683+asiosio"
    git_org              = "asiosio"
    git_repo             = "terragoat"
    yor_trace            = "57254a6f-e494-4dfe-82a8-21dbfe64dd0d"
  }
}

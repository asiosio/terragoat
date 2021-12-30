provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "leet" {
  name        = "leet"
  description = "Allow leet inbound traffic"
  ingress {
    description = "leet"
    from_port   = 1337
    to_port     = 1337
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    git_commit           = "c8edcd61a740408a3a232ebacf74a75920e0c544"
    git_file             = "terraform/simple_instance/ec15.tf"
    git_last_modified_at = "2021-12-30 10:54:05"
    git_last_modified_by = "91682683+asiosio@users.noreply.github.com"
    git_modifiers        = "91682683+asiosio"
    git_org              = "asiosio"
    git_repo             = "terragoat"
    yor_trace            = "c0173d17-fc70-4c44-9219-b27d80d6e3f2"
  }
}

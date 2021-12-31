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
    git_commit           = "d0663614a8c0ab88267949221cec17e4185d436e"
    git_file             = "terraform/simple_instance/sample-sg.tf"
    git_last_modified_at = "2021-12-31 09:22:57"
    git_last_modified_by = "91682683+asiosio@users.noreply.github.com"
    git_modifiers        = "91682683+asiosio"
    git_org              = "asiosio"
    git_repo             = "terragoat"
    yor_trace            = "3c2008fe-9949-4786-bc99-845f6296571b"
  }
}

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
  tags = {
    git_commit           = "98f02f6cbfb07858ed01f0fb44ed80864b1c59fc"
    git_file             = "terraform/simple_instance/ec17.tf"
    git_last_modified_at = "2021-12-30 10:59:48"
    git_last_modified_by = "91682683+asiosio@users.noreply.github.com"
    git_modifiers        = "91682683+asiosio"
    git_org              = "asiosio"
    git_repo             = "terragoat"
    yor_trace            = "59460c71-2471-4264-986c-2a694a091f5a"
  }
}

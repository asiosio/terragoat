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
  tags = {
    git_commit           = "864b4ff31980573b5b34472dbfbeb99c0712d6f2"
    git_file             = "terraform/simple_instance/ec4.tf"
    git_last_modified_at = "2021-12-30 09:58:32"
    git_last_modified_by = "91682683+asiosio@users.noreply.github.com"
    git_modifiers        = "91682683+asiosio"
    git_org              = "asiosio"
    git_repo             = "terragoat"
    yor_trace            = "348b2583-b4e9-4e12-b878-c29f27b58075"
  }
}

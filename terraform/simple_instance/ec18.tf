provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "armand" {
  name        = "armand"
  description = "Allow armand inbound traffic"
  ingress {
    description = "armand"
    from_port   = 21
    to_port     = 21
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    git_commit           = "eb69a4a3a423a028b57691edab594a361203a6b0"
    git_file             = "terraform/simple_instance/ec18.tf"
    git_last_modified_at = "2021-12-30 11:15:32"
    git_last_modified_by = "91682683+asiosio@users.noreply.github.com"
    git_modifiers        = "91682683+asiosio"
    git_org              = "asiosio"
    git_repo             = "terragoat"
    yor_trace            = "06cae548-e4a0-46ec-ae76-8839379752b1"
  }
}

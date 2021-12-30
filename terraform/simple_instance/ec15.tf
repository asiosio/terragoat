provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "armand" {
  name        = "armand_lol"
  description = "Allow SSH inbound traffic"
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    git_commit           = "72091d5ec2644a501a12e0dc54c4ccc17eec0429"
    git_file             = "terraform/simple_instance/ec15.tf"
    git_last_modified_at = "2021-12-30 10:51:01"
    git_last_modified_by = "91682683+asiosio@users.noreply.github.com"
    git_modifiers        = "91682683+asiosio"
    git_org              = "asiosio"
    git_repo             = "terragoat"
    yor_trace            = "56208b7e-51c7-4222-af51-370ef55cb8d7"
  }
}

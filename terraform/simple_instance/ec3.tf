provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "ssh_traffic" {
  name        = "ssh_traffic"
  description = "Allow SSH inbound traffic"
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    git_commit           = "8d371b4d9c6c9f8678431c09317bd898eb652684"
    git_file             = "terraform/simple_instance/ec3.tf"
    git_last_modified_at = "2021-12-30 09:55:25"
    git_last_modified_by = "91682683+asiosio@users.noreply.github.com"
    git_modifiers        = "91682683+asiosio"
    git_org              = "asiosio"
    git_repo             = "terragoat"
    yor_trace            = "4038dffe-ca0f-401e-8a14-ae05175b4a83"
  }
}

resource "aws_instance" "web_server_instance" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.ssh_traffic.name}"]
  tags = {
    Name                 = "bc_workshop_ec2"
    git_commit           = "8d371b4d9c6c9f8678431c09317bd898eb652684"
    git_file             = "terraform/simple_instance/ec3.tf"
    git_last_modified_at = "2021-12-30 09:55:25"
    git_last_modified_by = "91682683+asiosio@users.noreply.github.com"
    git_modifiers        = "91682683+asiosio"
    git_org              = "asiosio"
    git_repo             = "terragoat"
    yor_trace            = "658a66ae-a654-4f27-8eae-d05575606c76"
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

#sample comment
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
    git_commit           = "b1dc25e7e012f50047827e26696e10e99b06dbc2"
    git_file             = "terraform/simple_instance/ec2.tf"
    git_last_modified_at = "2021-12-28 18:15:03"
    git_last_modified_by = "91682683+asiosio@users.noreply.github.com"
    git_modifiers        = "91682683+asiosio"
    git_org              = "asiosio"
    git_repo             = "terragoat"
    yor_trace            = "9f01d059-a372-4b29-a9db-0055c148e745"
  }
}

resource "aws_instance" "web_server_instance" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.ssh_traffic.name}"]
  tags = {
    Name                 = "bc_workshop_ec2"
    git_commit           = "b1dc25e7e012f50047827e26696e10e99b06dbc2"
    git_file             = "terraform/simple_instance/ec2.tf"
    git_last_modified_at = "2021-12-28 18:15:03"
    git_last_modified_by = "91682683+asiosio@users.noreply.github.com"
    git_modifiers        = "91682683+asiosio"
    git_org              = "asiosio"
    git_repo             = "terragoat"
    yor_trace            = "55a11d04-0464-4d56-9b29-820f616053f7"
  }
  associate_public_ip_address = true
  availability_zone = "us-west-2c"
  cpu_core_count = 1
  cpu_threads_per_core = 1
  credit_specification = {"cpu_credits": "standard"}
  disable_api_termination = false
  ebs_optimized = false
  get_password_data = false
  hibernation = false
  ipv6_address_count = 0
  metadata_options = {"http_endpoint": "enabled", "http_put_response_hop_limit": "1", "http_tokens": "optional"}
  monitoring = false
  private_ip = "172.31.0.187"
  root_block_device = {"delete_on_termination": true, "encrypted": false, "iops": "100", "volume_size": "8", "volume_type": "gp2"}
  source_dest_check = true
  subnet_id = "subnet-05ad569cefa389486"
  tenancy = "default"
  vpc_security_group_ids = ["sg-0046808bbcd952118"]
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

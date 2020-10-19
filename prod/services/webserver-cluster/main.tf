provider "aws" {
	region = "us-east-1"
}

module "webserver_cluster" {
	#source = "git::https://github.com/Corey-Matthew/modules.git//services/webserver-cluster?ref=v0.0.2"
	source  = "../../../../modules/services/webserver-cluster"

	ami = data.aws_ami.ubuntu_linux_1604.id
	cluster_name = var.cluster_name
	db_remote_state_bucket = var.db_remote_state_bucket
	db_remote_state_key = var.db_remote_state_key
	aws_region = var.aws_region
	
	instance_type = "t2.micro"
	min_size = 2
	max_size = 10
	enable_autoscaling = true
	enable_new_user_data = false
}

data "aws_ami" "ubuntu_linux_1604" {
  most_recent = true
  owners      = ["099720109477"] # Canonical
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}



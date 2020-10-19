variable "cluster_name" {
	description = "The name to use for all the cluster resources"
	default = "webservers-prod"
}

variable "aws_region" {
	description = "The AWS region to use"
	default = "us-east-1"
}

variable "db_remote_state_bucket" {
	description = "The name of the s3 bucket for the database's remtoe state"
	default = "terraform-up-and-running-state-cdavis"
}

variable "db_remote_state_key" {
	description = "The path for the database's remote state in s3"
	default = "prod/data-stores/mysql/terraform.tfstate"
}

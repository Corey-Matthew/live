variable "cluster_name" {
	description = "The name to use for all the cluster resources"
	default = "webservers-stage"
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
	default = "stage/data-stores/mysql/terraform.tfstate"
}

variable "server_text" {
	description = "Text to use for User Data script"
	default = "Hello World 3000"
}

terraform {
	backend "s3" {
		bucket = "terraform-up-and-running-state-cdavis"
		key = "stage/data-stores/mysql/terraform.tfstate"
		region = "us-east-1"
		encrypt = "true"
		dynamodb_table = "terraform_state_cdavis"
	}


}


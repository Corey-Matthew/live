provider "aws" {
	region = "us-east-1"
}


resource "aws_db_instance" "stage_db" {
	engine = "mysql"
	allocated_storage = 10
	instance_class = "db.t2.micro"
	name = "stage_database"
	username = "admin"
	password = var.db_password
	#final_snapshot_identifier = "prod-database"
	skip_final_snapshot = true
}

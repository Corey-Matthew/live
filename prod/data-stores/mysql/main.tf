provider "aws" {
	region = "us-east-1"
}


resource "aws_db_instance" "prod_db" {
	engine = "mysql"
	allocated_storage = 10
	instance_class = "db.t2.micro"
	name = "prod_database"
	username = "admin"
	password = var.db_password
	final_snapshot_identifier = "prod-database"
}

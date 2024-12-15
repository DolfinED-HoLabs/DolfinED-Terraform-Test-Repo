## start first without this part, create the REPO first then in the next step you will create the database, demonsteate the password in the .tfstate file, and then use .gitignore to ignore sensitive data files. 


## creates a MySQL RDS database
## https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance


resource "aws_db_instance" "default1" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "admin"
  # password             = "foobarbaz"
  password             = "${file("${path.module}/rds_pass.txt")}"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}

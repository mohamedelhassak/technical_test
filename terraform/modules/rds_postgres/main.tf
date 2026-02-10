resource "aws_db_instance" "postgres" {
  engine = "postgres"
  instance_class = "db.t3.micro"

  storage_encrypted = true
  publicly_accessible = false
}

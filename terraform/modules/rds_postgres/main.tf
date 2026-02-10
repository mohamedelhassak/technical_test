resource "aws_db_instance" "postgres" {
  engine = "postgres"
  instance_class = "db.t3.micro"
  db_name = var.db_name

  storage_encrypted = true
  publicly_accessible = false
}

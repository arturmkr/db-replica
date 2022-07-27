output "master_db_public_ip" {
  value = aws_instance.master_db.public_ip
}

output "replica_db_public_ip" {
  value = aws_instance.replica_db.public_ip
}

output "master_db_private_ip" {
  value = aws_instance.master_db.private_ip
}

output "replica_db_private_ip" {
  value = aws_instance.replica_db.private_ip
}
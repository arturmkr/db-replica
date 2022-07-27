resource "aws_key_pair" "devops_key" {
  key_name   = "devops-key"
  public_key = file(var.public_key)
}

resource "aws_instance" "master_db" {
  ami = var.ubuntu_20_04
  instance_type = "t2.micro"

  key_name = aws_key_pair.devops_key.key_name

  vpc_security_group_ids = [
    aws_security_group.replica_sg.id
  ]

  tags = {
    Name = "master_db"
  }
}

resource "aws_instance" "replica_db" {
  ami = var.ubuntu_20_04
  instance_type = "t2.micro"

  key_name = aws_key_pair.devops_key.key_name

  vpc_security_group_ids = [
    aws_security_group.replica_sg.id
  ]

  tags = {
    Name = "replica_db"
  }
}
variable "ubuntu_20_04" {
  type = string
  default = "ami-0960ab670c8bb45f3"
}

variable "public_key" {
  type = string
  default = "~/.ssh/id_ed25519.pub"
}

variable "rds_login" {
  type = string
  default = "useropsdb"
}

variable "rds_password" {
  type = string
  default = "useropsdb"
}
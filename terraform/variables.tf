variable "ubuntu_22_04" {
  type = string
  default = "ami-02f3416038bdb17fb"
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
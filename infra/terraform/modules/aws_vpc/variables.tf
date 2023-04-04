variable "vpc_name" {
  description =  "the vpc name"
}

variable "cidr" {
  description = "the cidr of the vpc"
}

variable "azs" {
  description = "the azs of the vpc"
  type = list(string)
  default = []
}

variable "private_subnets" {
  description = "the private subnets"
  type = list(string)
  default = []
}

variable "public_subnets" {
  description = "the public subnets"
  type = list(string)
  default = []
}


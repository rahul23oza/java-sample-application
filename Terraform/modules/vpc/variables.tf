variable "vpc_cidr_block" {
  type = string
  description = "This CIDR block for VPC"
}

variable "public_subnet_cidr_block1" {
  type = string
  description = "This CIDR block for Public subnet."
}

variable "public_subnet_cidr_block2" {
  type = string
  description = "This CIDR block for Public subnet."
}

variable "private_subnet_cidr_block1" {
  type = string
  description = "This CIDR block for Private subnet."
}

variable "private_subnet_cidr_block2" {
  type = string
  description = "This CIDR block for Private subnet."
}

# variable "public_subnet_az" {
#   type = list(string)
# }

# variable "private_subnet_az" {
#  type = list(string) 
# }

variable "vpc_name" {
  type        = string
  description = "The name of the VPC."
}


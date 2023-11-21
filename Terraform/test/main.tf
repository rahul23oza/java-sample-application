module "vpc" {
  source                     = "../modules/vpc"
  vpc_name                   = "Demo_VPC"
  vpc_cidr_block             = "10.0.0.0/16"
  public_subnet_cidr_block1  = "10.0.1.0/24"
  public_subnet_cidr_block2  = "10.0.2.0/24"
  private_subnet_cidr_block1 = "10.0.3.0/24"
  private_subnet_cidr_block2 = "10.0.4.0/24"
}

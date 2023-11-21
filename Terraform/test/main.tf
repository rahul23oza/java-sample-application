module "vpc" {
  source                     = "../modules/vpc"
  vpc_name                   = "Demo_VPC"
  vpc_cidr_block             = "10.0.0.0/16"
  public_subnet_cidr_block1  = "10.0.1.0/24"
  public_subnet_cidr_block2  = "10.0.2.0/24"
  private_subnet_cidr_block1 = "10.0.3.0/24"
  private_subnet_cidr_block2 = "10.0.4.0/24"
}


module "alb" {
  source      = "../modules/ALB"
  alb_name    = "alb"
  alb_subnets = [module.vpc.public_subnet_id_1, module.vpc.public_subnet_id_2]
  vpc_id      = module.vpc.vpc_id

  # ALB - SG

  lb_sg_name        = "LB_SG"
  lb_sg_description = "for java app"
  vpc_id_sg         = module.vpc.vpc_id
  lb_ingress_rules = {
    http = {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = ""
    }
  }

  lb_egress_rules = {
    all_traffic = {
      from_port   = 0
      to_port     = 0
      protocol    = "-1" # All protocols
      cidr_blocks = ["0.0.0.0/0"]
      description = ""
    }
  }

}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr       = var.vpc_cidr
  public_subnets = var.public_subnets
  private_subnets = var.private_subnets
}

module "alb" {
  source = "./modules/alb"

  vpc_id          = module.vpc.vpc_id
  public_subnets  = module.vpc.public_subnets
  security_groups = [module.vpc.web_sg_id]
}

module "web" {
  source = "./modules/ec2"

  ami           = "ami-053a45fff0a704a47" # Amazon Linux 2 AMI
  instance_type = "t2.micro"
  subnet_id     = module.vpc.public_subnets[0]
  security_groups = [module.vpc.web_sg_id]
  instance_name = "web-instance"
}

module "app" {
  source = "./modules/ec2"

  ami           = "ami-053a45fff0a704a47" # Amazon Linux 2 AMI
  instance_type = "t2.micro"
  subnet_id     = module.vpc.private_subnets[0]
  security_groups = [module.vpc.app_sg_id]
  instance_name = "app-instance"
}

module "rds" {
  source = "./modules/rds"

  db_name      = "mydatabase"
  db_username  = var.db_username
  db_password  = var.db_password
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.private_subnets
  security_groups = [module.vpc.db_sg_id]
}
module "ec2_creation" {
  source    = "./modules/ec2"
  ami       = var.ec2_ami
  type      = var.ec2_type
  subnet    = var.ec2_subnet
  ec2_sg_id = module.sg.sg_ec2_id
}

module "lb_creation" {
  source     = "./modules/lb"
  subnet_lb1 = var.subnet_lb1
  subnet_lb2 = var.subnet_lb2
  sgroup_lb  = module.sg_lb.sg_lb_id
  bucketlog  = module.s3_log.log_bucket_id
}


module "sg" {
  source       = "./modules/sg"
  vpc_id       = var.vpc_id
  ingress_port = module.sg_lb.sg_lb_id
  lb_cidr      = var.lb_cidr
}

module "sg_lb" {
  source       = "./modules/sg_lb"
  vpc_id       = var.vpc_id
  ingress_port = var.ingress_port
  lb_cidr      = var.lb_cidr
}

module "s3_log" {
  source = "./modules/s3_log"

}
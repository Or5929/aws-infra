variable "ec2_ami" {
  description = "define image for ec2"
  type        = string
}

variable "ec2_type" {
  description = "define machince type for ec2"
  type        = string
}

variable "ec2_subnet" {
  description = "define machince subnet for ec2"
  type        = string
}

variable "vpc_id" {
  description = "define vpc_id for ec2"
  type        = string
}

variable "lb_cidr" {
  description = "define lb_cidr for ec2"
  type        = string
}

variable "ingress_port" {
  description = "define ingress_port for ec2"
  type        = number
}


variable "subnet_lb1" {
  description = "define subnet1 for lb"
  type        = string
}

variable "subnet_lb2" {
  description = "define subnet2 for lb"
  type        = string
}

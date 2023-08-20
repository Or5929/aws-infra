resource "aws_lb" "test_lb" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.sgroup_lb]
  subnets = [var.subnet_lb1, var.subnet_lb2]

  enable_deletion_protection = false

  access_logs {
     bucket  = var.bucketlog
     prefix  = "log"
     enabled = true
   }

  tags = {
    Environment = "production"
  }
}
######################## sg output #########################

output "sg_lb_id" {
    description = "security group for lb"
    value = aws_security_group.sg_lb.id
}
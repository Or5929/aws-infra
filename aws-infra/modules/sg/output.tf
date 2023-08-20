######################## sg output #########################

output "sg_ec2_id" {
    description = "security group for ec2"
    value = aws_security_group.allow_http.id
}
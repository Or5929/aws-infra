resource "aws_instance" "webOr" {
  ami           = var.ami
  instance_type = var.type
  subnet_id = var.subnet
  vpc_security_group_ids = ["${var.ec2_sg_id}"]
  user_data = <<EOF
#!/bin/bash
sudo yum install httpd -y
sudo systemctl enable httpd
echo "Web server working successfully" > /var/www/html/index.html
sudo systemctl start httpd
EOF

  tags = {
    Name = "TestMachine"
  }
}
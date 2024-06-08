resource "aws_instance" "example" {
  ami           = "ami-00beae93a2d981137"  # Amazon Linux 2 AMI ID for us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "vulnerable-ec2-instance"
  }
}

resource "aws_security_group" "allow_all" {
  name        = "allow_all_unique"  # Use a unique name
  description = "Allow all inbound traffic"
  
  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

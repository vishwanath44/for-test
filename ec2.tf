resource "aws_instance" "example" {
  ami           = "ami-057fee592d97c84cb"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform"
    Project = "ASMPT"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls-terraform"
  description = "Allow TLS inbound traffic and all outbound traffic"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls-terraform"
  }
}
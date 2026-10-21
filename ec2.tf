resource "aws_instance" "example" {
  ami           = "ami-057fee592d97c84cb"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform"
    Project = "ASMPT"
  }
}
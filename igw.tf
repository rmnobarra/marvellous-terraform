resource "aws_internet_gateway" "lab_internet_gateway" {
  vpc_id = aws_vpc.lab.id

  tags = {
    Name = "lab-internet-gateway"
  }
}
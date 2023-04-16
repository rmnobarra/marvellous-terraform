resource "aws_route_table" "lab_route_table" {
  vpc_id = aws_vpc.lab.id

  route {
    # Associated subet can reach lab internet
    cidr_block = "0.0.0.0/0"

    # Which internet gateway to use
    gateway_id = aws_internet_gateway.lab_internet_gateway.id
  }

  tags = {
    Name = "lab-lab-custom-rtb"
  }
}

resource "aws_route_table_association" "lab-custom-rtb-lab-subnet" {
  count          = 2
  route_table_id = aws_route_table.lab_route_table.id
  subnet_id      = aws_subnet.lab_public_subnet.*.id[count.index]
}
resource "aws_subnet" "lab_public_subnet" {
  count = var.number_of_public_subnets

  availability_zone       = data.aws_availability_zones.available.names[count.index]
  cidr_block              = "10.0.${count.index + 2}.0/24"
  vpc_id                  = aws_vpc.lab.id
  map_public_ip_on_launch = true 

  tags = {
    Name = "lab-public-subnet-${count.index}"
  }
}

resource "aws_subnet" "lab_private_subnet" {
  count = var.number_of_private_subnets

  availability_zone = data.aws_availability_zones.available.names[count.index]
  cidr_block        = "10.0.${count.index}.0/24"
  vpc_id            = aws_vpc.lab.id

  tags = {
    Name = "lab-private-subnet-${count.index}"
  }
}
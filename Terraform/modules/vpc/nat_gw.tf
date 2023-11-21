resource "aws_nat_gateway" "my_nat_gateway" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id = aws_subnet.public-subnet-1.id

  tags = {
    Name = "nat-gateway"
  }
}
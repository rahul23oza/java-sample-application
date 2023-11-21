resource "aws_subnet" "public-subnet-1" {
  vpc_id     = aws_vpc.vpc.id
  # count = length(var.public_subnet_cidr_block)
  cidr_block = var.public_subnet_cidr_block1
  availability_zone = "us-west-1a"
  tags = {
    Name = "public-subnet-1"
  }
}

resource "aws_subnet" "private-subnet-1" { 
  vpc_id     = aws_vpc.vpc.id
  # count = length(var.private_subnet_cidr_block)
  cidr_block = var.private_subnet_cidr_block1
  availability_zone = "us-west-1a"
  tags = {
    Name = "private-subnet-1"
  }
}


resource "aws_subnet" "public-subnet-2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.public_subnet_cidr_block2
  # count = 2
  availability_zone = "us-west-1b"
  tags = {
    Name = "public-subnet-2"
  }
}

resource "aws_subnet" "private-subnet-2" { 
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_subnet_cidr_block2
  availability_zone = "us-west-1b"
  tags = {
    Name = "private-subnet-2"
  }
}
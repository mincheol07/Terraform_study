
resource "aws_eip" "nat-eip" {
    domain = "vpc"
  
}


resource "aws_nat_gateway" "test-nat" {
    allocation_id = aws_eip.nat-eip.id
    subnet_id = aws_subnet.public-subnet.id

    tags = {
      Name = "test-nat"
    }

  
}
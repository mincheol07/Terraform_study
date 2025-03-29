resource "aws_route_table" "igw-route-table" {
    vpc_id = aws_vpc.test-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.test-igw.id
    }

    tags = {
        Name = "igw-route-table"
    }

}


resource "aws_route_table" "nat-route-table" {
    vpc_id = aws_vpc.test-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.test-nat.id
    }

    tags = {
      Name = "nat-route-table"
    }
  
}


resource "aws_route_table_association" "a" {
    subnet_id = aws_subnet.public-subnet.id
    route_table_id = aws_route_table.igw-route-table.id
}

resource "aws_route_table_association" "b" {
    subnet_id = aws_subnet.private-subnet.id
    route_table_id = aws_route_table.nat-route-table.id
}
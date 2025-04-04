resource "aws_subnet" "public-subnet" {
    vpc_id = aws_vpc.test-vpc.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true
    availability_zone = "ap-northeast-2a"

    tags = {
      Name = "public-subnet"
    }
  
}


resource "aws_subnet" "private-subnet" {
    vpc_id = aws_vpc.test-vpc.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "ap-northeast-2c"

    tags = {
      Name = "private-subnet"
    }
  
}
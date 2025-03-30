resource "aws_subnet" "public-subnet-01" {
    vpc_id = aws_vpc.threetire.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true
    availability_zone = "ap-northeast-2a"

    tags = {
      Name = "public-subnet-01"
    }
  
}

resource "aws_subnet" "public-subnet-02" {
    vpc_id = aws_vpc.threetire.id
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = true
    availability_zone = "ap-northeast-2c"

    tags = {
      Name = "public-subnet-02"
    }
  
}



resource "aws_subnet" "private-subnet-web-01" {
    vpc_id = aws_vpc.threetire.id
    cidr_block = "10.0.3.0/24"
    availability_zone = "ap-northeast-2a"

    tags = {
      Name = "private-subnet-web-01"
    }
  
}


resource "aws_subnet" "private-subnet-web-02" {
    vpc_id = aws_vpc.threetire.id
    cidr_block = "10.0.4.0/24"
    availability_zone = "ap-northeast-2c"

    tags = {
      Name = "private-subnet-web-02"
    }
  
}



resource "aws_subnet" "private-subnet-was-01" {
    vpc_id = aws_vpc.threetire.id
    cidr_block = "10.0.5.0/24"
    availability_zone = "ap-northeast-2a"

    tags = {
      Name = "private-subnet-was-01"
    }
  
}

resource "aws_subnet" "private-subnet-was-02" {
    vpc_id = aws_vpc.threetire.id
    cidr_block = "10.0.6.0/24"
    availability_zone = "ap-northeast-2c"

    tags = {
      Name = "private-subnet-was-02"
    }
  
}


resource "aws_subnet" "private-subnet-db-01" {
    vpc_id = aws_vpc.threetire.id
    cidr_block = "10.0.7.0/24"
    availability_zone = "ap-northeast-2a"

    tags = {
      Name = "private-subnet-db-01"
    }
}

resource "aws_subnet" "private-subnet-db-02" {
    vpc_id = aws_vpc.threetire.id
    cidr_block = "10.0.8.0/24"
    availability_zone = "ap-northeast-2c"

    tags = {
      Name = "private-subnet-db-02"
    }
}
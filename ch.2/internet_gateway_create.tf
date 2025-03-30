resource "aws_internet_gateway" "test-igw" {
    vpc_id = aws_vpc.threetire.id

    tags = {
      Name = "test-igw"
    }
  
}

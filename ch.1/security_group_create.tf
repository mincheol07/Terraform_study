resource "aws_security_group" "public-ec2-sg" {
    vpc_id = aws_vpc.test-vpc.id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ local.my_cidr ]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    tags = {
        Name = "public-ec2-sg"
    }
}


resource "aws_security_group" "private-ec2-sg" {
    vpc_id = aws_vpc.test-vpc.id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        security_groups = [ aws_security_group.public-ec2-sg.id ]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    tags = {
      Name = "private-ec2-sg"
    }
  
}
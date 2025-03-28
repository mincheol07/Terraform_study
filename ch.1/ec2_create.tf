resource "aws_instance" "bastion" {
    ami = "ami-0c7b1488cc36bacae"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.public-subnet.id
    key_name = aws_key_pair.my_key_pair.key_name
    security_groups = [ aws_security_group.public-ec2-sg.id ]

    tags = {
      Name = "bastion"
    }

  
}


resource "aws_instance" "private-ec2" {
    ami = "ami-0c7b1488cc36bacae"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.private-subnet.id
    key_name = aws_key_pair.my_key_pair.key_name
    security_groups = [ aws_security_group.private-ec2-sg.id ]

    tags = {
      Name = "private-ec2"
    }

  
}
resource "aws_instance" "bastion" {
    ami = "ami-0c7b1488cc36bacae"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.public-subnet-01.id
    key_name = aws_key_pair.my_key_pair.key_name
    security_groups = [ aws_security_group.public-ec2-sg.id ]


    tags = {
      Name = "bastion"
    }

  
}



resource "aws_instance" "web-01" {
    ami = "ami-0c7b1488cc36bacae"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.private-subnet-web-01.id
    key_name = aws_key_pair.my_key_pair.key_name
    security_groups = [ aws_security_group.public-ec2-sg.id ]

    tags = {
      Name = "web-01"
    }

  
}


resource "aws_instance" "web-02" {
    ami = "ami-0c7b1488cc36bacae"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.private-subnet-web-02.id
    key_name = aws_key_pair.my_key_pair.key_name
    security_groups = [ aws_security_group.public-ec2-sg.id ]

    tags = {
      Name = "web-02"
    }

  
}


resource "aws_instance" "was-01" {
    ami = "ami-0c7b1488cc36bacae"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.private-subnet-was-01.id
    key_name = aws_key_pair.my_key_pair.key_name
    security_groups = [ aws_security_group.public-ec2-sg.id ]

    tags = {
      Name = "was-01"
    }

  
}

resource "aws_instance" "was-02" {
    ami = "ami-0c7b1488cc36bacae"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.private-subnet-was-02.id
    key_name = aws_key_pair.my_key_pair.key_name
    security_groups = [ aws_security_group.public-ec2-sg.id ]

    tags = {
      Name = "was-02"
    }

  
}
resource "aws_security_group" "public-sg" {
    vpc_id = aws_vpc.threetire.id

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
        Name = "public-sg"
    }
}


resource "aws_security_group" "private-web" {
    vpc_id = aws_vpc.threetire.id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        security_groups = [ aws_security_group.public-sg.id ]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "http"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    tags = {
      Name = "private-web"
    }
  
}


resource "aws_security_group" "private-was" {
    vpc_id = aws_vpc.threetire.id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        security_groups = [ aws_security_group.private-web.id ]
    }

    ingress {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    tags = {
      Name = "private-was"
    }
  
}


resource "aws_security_group" "private-db" {
    vpc_id = aws_vpc.threetire.id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        security_groups = [ aws_security_group.private-was.id ]
    }

    ingress {
        from_port = 5432
        to_port = 5432
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    tags = {
      Name = "private-was"
    }
  
}
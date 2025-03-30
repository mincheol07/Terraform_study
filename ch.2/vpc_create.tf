resource "aws_vpc" "threetire" {
    cidr_block = "10.0.0.0/16"

    tags = {
      Name = "3tire-test"
    }
}


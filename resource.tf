#this code is for vpc configuration

resource "aws_vpc" "prime" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"


  tags = {
    Name = "prime"
  }
}
#to create igw
resource "aws_internet_gateway" "prime-igw" {
  vpc_id = aws_vpc.prime.id


  tags = {
    Name = "prime-igw"
  }
}
#creating a public subnet 1

resource "aws_subnet" "prime_pub1" {
  vpc_id            = aws_vpc.prime.id
  cidr_block        = var.prime_pub1-cidr #"10.0.1.0/24"
  availability_zone = "us-east-1a"        #"us-east-1a"

  tags = {
    Name = "prime-pub1"
  }
}




# homework section: creating of public subnet 2 

resource "aws_subnet" "prime-pub2" {
  vpc_id            = aws_vpc.prime.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1b"



  tags = {
    Name = "prime-pub2"
  }
}

#private subnet 1

resource "aws_subnet" "prime_priv1" {
  vpc_id            = aws_vpc.prime.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "prime_priv1"
  }
}

#private subnet 2

resource "aws_subnet" "prime-priv2" {
  vpc_id            = aws_vpc.prime.id
  cidr_block        = "10.0.6.0/24"
  availability_zone = us-east-1b

tags = {
  Name = "prime-priv2"
 }
}





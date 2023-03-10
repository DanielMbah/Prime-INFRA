


variable "region" {
  description = "region where we provision our resources"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "variable for vpc cidr"
  type        = string
  default     = "10.0.0.0/16"
}

variable "prime_pub1-cidr" {
  description = "cidr block for public sn"
  type        = string
  default     = "10.0.1.0/24"

}


variable "prime_pub1cidr" {
  description = "availibility zone"
  type        = string
  default     = "us-east-1a"

}
#public subnet 2

variable "vpc_id" {
  description = "ID of the VPC the subnet belongs to"
  type        = string
}

variable "subnet_cidr_block" {
  description = "CIDR block for the  public subnet"
  type        = string
  default     = "10.0.3.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
  default     = "us-east-1b"
}

#private subnet 1


resource "aws_subnet" "primepriv1" {
  vpc_id            = aws_vpc.prime.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "prime-priv1"
  }
}

#private subnet 2

variable "vpc_id" {
  description = "The ID of the VPC the subnet belongs to"
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
  default     = "10.0.6.0/24"
}

variable "availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
  default     = "us-east-1b"
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default     = "prime-priv2"
}



 
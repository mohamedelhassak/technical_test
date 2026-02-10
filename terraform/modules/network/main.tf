resource "aws_vpc" "main_vpc" {
    cidr_block           = "10.0.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support   = true

    tags = {
        Name = "main-vpc"
    }
}

# Public Subnet for web servers
resource "aws_subnet" "public_subnet" {
    vpc_id            = aws_vpc.main_vpc.id
    cidr_block        = "10.0.1.0/24"

    tags = {
        Name = "public-subnet"
    }
}

# Private Subnet for database servers (PostgreSQL, redis...)
resource "aws_subnet" "private_subnet" {
    vpc_id            = aws_vpc.main_vpc.id
    cidr_block        = "10.0.1.0/24"

    tags = {
        Name = "private-subnet"
    }
}

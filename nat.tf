
/* resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-us-east-1a.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.igw]
} */



resource "aws_eip" "nat_eip" {
  count = length(var.private_subnets)
  vpc   = true
  tags = {
    Name = "nat-eip-${var.vpc_name}"
  }
}

resource "aws_nat_gateway" "nat" {
  count         = length(var.private_subnets)
  allocation_id = element(aws_eip.nat_eip.*.id, count.index)
  subnet_id     = element(aws_subnet.pub_subnet.*.id, count.index)
  depends_on    = [aws_internet_gateway.igw]

  tags = {
    Name = "${var.vpc_name}-nat-${format("%03d", count.index + 1)}"
  }
}

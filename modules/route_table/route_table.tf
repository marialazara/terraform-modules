resource "aws_route_table" "rtb" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.cidr_block
    gateway_id = var.gateway_id
  }
  tags = var.tags
}

resource "aws_route_table_association" "a" {
  subnet_id      = var.subnet_id_rt
  route_table_id = aws_route_table.rtb.id
}
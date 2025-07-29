resource "aws_security_group" "sg_1" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id

  tags       = var.tags
}

resource "aws_vpc_security_group_ingress_rule" "ingress_rule" {
  security_group_id = aws_security_group.sg_1.id
  cidr_ipv4         = var.sg_ingress_cidr_ipv4
  from_port         = var.sg_ingress_from_port
  ip_protocol       = var.sg_ingress_ip_protocol
  to_port           = var.sg_ingress_from_port
}

resource "aws_vpc_security_group_egress_rule" "egress_rule" {
  security_group_id = aws_security_group.sg_1.id
  cidr_ipv4         = var.sg_egress_cidr_ipv4
  from_port         = var.sg_egress_from_port
  ip_protocol       = var.sg_egress_ip_protocol
  to_port           = var.sg_egress_from_port
}

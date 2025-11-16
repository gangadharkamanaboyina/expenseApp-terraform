resource "aws_security_group_rule" "backend_lb_bastion" {
  type                          = "ingress"
  security_group_id             = local.backend_lb_sg_id
  from_port                     = 80
  to_port                       = 80
  protocol                      = "tcp"
  source_security_group_id      = local.bastion_sg_id
}

resource "aws_security_group_rule" "bastion_local" {
  type                          = "ingress"
  security_group_id             = local.bastion_sg_id
  from_port                     = 22
  to_port                       = 22
  protocol                      = "tcp"
  cidr_blocks                   = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "mysql_bastion" {
  type                          = "ingress"
  security_group_id             = local.mysql_sg_id
  from_port                     = 22
  to_port                       = 22
  protocol                      = "tcp"
  source_security_group_id      = local.bastion_sg_id
}

resource "aws_security_group_rule" "backend_bastion" {
  type                          = "ingress"
  security_group_id             = local.backend_sg_id
  from_port                     = 22
  to_port                       = 22
  protocol                      = "tcp"
  source_security_group_id      = local.bastion_sg_id
}

resource "aws_security_group_rule" "frontend_bastion" {
  type                          = "ingress"
  security_group_id             = local.frontend_sg_id
  from_port                     = 22
  to_port                       = 22
  protocol                      = "tcp"
  source_security_group_id      = local.bastion_sg_id
}


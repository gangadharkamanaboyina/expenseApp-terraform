data "aws_ssm_parameter" "backend_lb_sg_id" {
  name = "/${var.project}/${var.env}/backend_lb_sg_id"
}

data "aws_ssm_parameter" "bastion_sg_id" {
  name = "/${var.project}/${var.env}/bastion_sg_id"
}

data "aws_ssm_parameter" "mysql_sg_id" {
  name = "/${var.project}/${var.env}/mysql_sg_id"
}
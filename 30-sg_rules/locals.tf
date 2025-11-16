locals {
    backend_lb_sg_id = data.aws_ssm_parameter.backend_lb_sg_id.value
    bastion_sg_id = data.aws_ssm_parameter.bastion_sg_id.value
    mysql_sg_id = data.aws_ssm_parameter.mysql_sg_id.value
    backend_sg_id = data.aws_ssm_parameter.backend_sg_id.value
    frontend_sg_id = data.aws_ssm_parameter.frontend_sg_id.value

}
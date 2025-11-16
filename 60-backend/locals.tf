locals {
    common_name = "${var.project}-${var.env}"
    ami_id = data.aws_ami.DevopsPrac.id
    instance_type = "t3.micro"
    sg_id = data.aws_ssm_parameter.backend_sg_id.value
    db_subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_ids.value)
}
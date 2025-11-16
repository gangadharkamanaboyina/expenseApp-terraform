data "aws_ssm_parameter" "backend_sg_id" {
  name = "/${var.project}/${var.env}/backend_sg_id"
}

data "aws_ami" "DevopsPrac" {

        most_recent = true
        owners = ["973714476881"]
        tags = {
            Name   = "RHEL-9-DevOps-Practice"
            Tested = "true"
        }

        filter {
           name = "virtualization-type" 
           values = ["hvm"]
        }
        
}

data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.project}/${var.env}/private_subnet_ids"
}
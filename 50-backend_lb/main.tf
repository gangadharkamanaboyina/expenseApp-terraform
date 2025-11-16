module "backend_lb" {
    source = "../../terraform-module-lb"
    name               = var.name
    project = var.project
    env = var.env
    sg_id              = local.backend_lb_sg_id
    subnet_ids         = local.private_subnet_ids
    tags               = var.tags
}
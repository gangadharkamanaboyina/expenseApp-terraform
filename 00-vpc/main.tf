module "vpc" {
  source = "github.com/gangadharkamanaboyina/terraform-module-vpc?ref=main"
  project = var.project
  env = var.env
  tags = var.tags
  vpc_cidr = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  db_subnet_cidrs = var.db_subnet_cidrs
}

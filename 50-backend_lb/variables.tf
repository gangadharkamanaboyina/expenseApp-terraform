variable "project" {
    type = string
    default = "ExpenseApp"
}

variable "env" {
    type = string
    default = "prod"
}

variable "name" {
    type = string
    default = "backend-lb"    
}

variable "sg_id" {
    default = ""
}

variable "subnet_ids" {
    type = list
    default = []
}

variable "tags" {
    default = {
        Project = "ExpenseApp"
        Environment = "prod"
        Terraform = "True"
        DoNotDelete = "True"
    }
}

module "mysql" {
  source            = "github.com/gangadharkamanaboyina/terraform-module-ec2.git?ref=main"
  ami_id            = local.ami_id
  instance_type     = local.instance_type
  sg_ids            = [local.sg_id]
  project           = var.project
  env               = var.env
  name              = var.name
  tags              = var.tags
  subnet_id = local.db_subnet_ids[0]
 // user_data = file("bootstrap.sh")
}

resource "terraform_data" "mysql" {
  triggers_replace = {
    always = timestamp()
  }

  connection {
      type        = "ssh"
      user        = "ec2-user"
      password = "DevOps321"
      host        = module.mysql.private_ip
    }
  
  provisioner "file" {
  source      = "bootstrap.sh"
  destination = "/tmp/bootstrap.sh"
}

provisioner "remote-exec" {
  inline = [
    "chmod +x /tmp/bootstrap.sh",
    "sudo /tmp/bootstrap.sh"
  ]
    
  }
}
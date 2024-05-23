{%set var = inventory.parameters.tfvars.provider%}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "{{var.aws}}"
    }
    random ={
      source = "hashicorp/random"
      version = "{{var.random}}"
    }
  }
  required_version = ">= {{var.terraform_version}}"
}
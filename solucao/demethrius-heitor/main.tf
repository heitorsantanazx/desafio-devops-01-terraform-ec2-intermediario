# Criando uma VPC

variable "trusted_ip_cidr_vpc" {
  description = "O bloco CIDR do endereço IP confiável para a VPC"
  type        = string
  sensitive   = true # Marca a variável como sensível para restringir a saída no console
}

resource "aws_vpc" "desafio_vpc"{
    cidr_block = var.trusted_ip_cidr_vpc
    enable_dns_support = true
    enable_dns_hostnames = true
    tags ={
        Name = "desafio_vpc"
    }
}
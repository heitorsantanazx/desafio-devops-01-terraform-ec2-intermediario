variable instance_name {
    description = "Nome da Instância EC2"
    type = string
    default = "desafio-02-ec2"
}

variable instance_os {
    description = "SO a ser utilizado"
    type = string
    default = "Amazon Linux 2023"
}

variable instance_type {
    description = "Tipo da Instância EC2"
    type = string
    default = "t3.micro"
}

variable "sg_name" {
  description = "Nome do Security Group"
  type        = string
  default     = "desafio-02-sg"
}

variable "environment" {
  description = "Ambiente (dev, prod)"
  type        = string
  default     = "dev"
}

variable "user_data" {
  description = "Arquivo para ser utilizado como user_data"
}
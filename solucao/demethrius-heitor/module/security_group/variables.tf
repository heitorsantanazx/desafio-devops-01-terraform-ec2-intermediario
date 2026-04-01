variable sg_name {
    description = "Nome do Security Group"
    type = string
    default = "desafio-02-sg"
}

variable "environment" {
  description = "Ambiente (dev, prod)"
  type        = string
  default     = "dev"
}
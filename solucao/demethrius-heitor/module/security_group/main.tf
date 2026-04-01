resource "aws_security_group" "web_sg" {
  name        = var.sg_name
  description = "Security Group para o Web Server"

  tags = {
    Name = var.sg_name
    Environment = var.environment
  }
}

resource "aws_vpc_sg_rule_ingress" "ssh" {
    security_group_id = aws_security_group.web_sg.id
    cidr_ipv4 = "0.0.0/0"
    protocol = "tcp"
    from_port = 22
    to_port = 22
    description = "Permitir acesso SSH."
}

resource "aws_vpc_sg_rule_ingress" "http" {
    security_group_id = aws_security_group.web_sg.id
    cidr_ipv4 = "0.0.0/0"
    protocol = "tcp"
    from_port = 80
    to_port = 80
    description = "Permitir acesso HTTP."
}

resource "aws_vpc_sg_rule_egress" "egress" {
    security_group_id = aws_security_group.web_sg.id
    cidr_ipv4 = "0.0.0/0"
    protocol = "-1"
    description = "Permitir todo o tráfego de saída."
}
resource "aws_security_group" "rds_sg" {
  vpc_id = module.vpc.vpc_id
  name = "${var.NOME}_rds_sg"

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Ajuste conforme necessário
  }
}
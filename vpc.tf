module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name   = "${var.NOME}-vpc"
  cidr   = "10.0.0.0/16"

  azs                  = ["${var.regionDefault}a", "${var.regionDefault}b"]
  private_subnets      = ["10.0.1.0/24", "10.0.2.0/24"]
  # Configuração para o EKS
  public_subnets       = ["10.0.101.0/24", "10.0.102.0/24"]
  enable_dns_hostnames = true
  enable_dns_support   = true
  enable_nat_gateway   = true   # Para permitir que subnets privadas acessem a Internet
  single_nat_gateway   = true   # Um NAT Gateway para economia de custos

  # Habilitar IP público nas subnets públicas
  # Para o api do kubernetes poder ser acessada pela a AWS -- Nao Confidir com sua propria API
  map_public_ip_on_launch = true

  tags = {
    projeto = var.TAGS
  }
  
}



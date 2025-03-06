terraform {
  backend "s3" {
    bucket         = "terraform-pos-lanchonete"
    key            = "bancoDados/state-file/terraform.tfstate"
    region         = "us-east-1"
  }
}
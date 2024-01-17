terraform {
  backend "s3" {
    bucket         = "julien-exercices-terraform-state"
    key            = "terraform-aws-multiaz-alb-asg.tfstate"
    dynamodb_table = "terraform-state"
    region         = "eu-west-3"
  }
}
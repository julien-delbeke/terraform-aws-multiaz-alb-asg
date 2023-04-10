# terraform {
#   backend "s3" {
#     bucket = "cip-interview-exercises-terraform-state-bucket"
#     key    = "test-interview/terraform.tfstate"
#     region = "eu-central-1"
#     dynamodb_table = "cip-interview-exercises-terraform-state-lock"
#   }
# }

terraform {
  backend "s3" {
    bucket         = "jakarta-terraform-state"
    key            = "roche-interview-2.tfstate"
    dynamodb_table = "terraform-state"
    region         = "eu-west-3"
  }
}
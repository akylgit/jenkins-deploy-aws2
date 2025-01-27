terraform {
  backend "s3" {
    bucket = "my-bucket-akylb"
    key    = "devops-project-1/jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}

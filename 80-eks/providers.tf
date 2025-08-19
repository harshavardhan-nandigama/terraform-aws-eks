terraform { 
  required_providers {
    aws = {    
      source = "hashicorp/aws"
      version = "6.9.0"
    }
  }

 backend "s3" {
    bucket ="dawst-remote-state"
    key = "roboshop-dev-ingress-alb"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }

}
provider "aws" {
  # configuration options
  region = "us-east-1"
}

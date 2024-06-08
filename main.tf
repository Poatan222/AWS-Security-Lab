provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source = "./modules/ec2"
}

module "rds" {
  source = "./modules/rds"
}

module "s3" {
  source = "./modules/s3"
}

module "ecs" {
  source = "./modules/ecs"
}

module "iam" {
  source = "./modules/iam"
}
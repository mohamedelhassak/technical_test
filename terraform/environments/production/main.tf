provider "aws" {
  region = "us-east-1"
}

module "network" {
  source   = "../../modules/network"
  environment = "production"
}

module "iam" {
  source = "../../modules/iam"
}

module "database" {
  source = "../../modules/rds_postgres"
  db_name = "productiondb"
}

module "redis" {
  source = "../../modules/redis"
  cluster_name = "production-redis"
}

module "ecs_api" {
  source = "../../modules/ecs_service"

  service_name      = "api-production"
  desired_count     = 1
  runtime_role_arn  = aws_iam_role.app_runtime_role.arn
}


module "ecs_worker" {
  source = "../../modules/ecs_service"

  service_name      = "worker-production"
  desired_count     = 1
  runtime_role_arn  = aws_iam_role.app_runtime_role.arn
}

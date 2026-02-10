provider "aws" {
  region = "us-east-1"
}

module "network" {
  source   = "../../modules/network"
  environment = "staging"
}

module "iam" {
  source = "../../modules/iam"
}

module "database" {
  source = "../../modules/rds_postgres"
  db_name = "stagingdb"
}

module "redis" {
  source = "../../modules/redis"
  cluster_name = "staging-redis"
}

module "ecs_api" {
  source = "../../modules/ecs_service"

  service_name      = "api-staging"
  desired_count     = 1
  runtime_role_arn  = aws_iam_role.app_runtime_role.arn
}


module "ecs_worker" {
  source = "../../modules/ecs_service"

  service_name      = "worker-staging"
  desired_count     = 1
  runtime_role_arn  = aws_iam_role.app_runtime_role.arn

}

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
}

module "ecs_api" {
  source = "../../modules/ecs_service"

  service_name      = "api-staging"
}


module "ecs_worker" {
  source = "../../modules/ecs_service"

  service_name      = "worker-staging"
}

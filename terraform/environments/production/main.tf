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
}

module "ecs_api" {
  source = "../../modules/ecs_service"

  service_name      = "api-production"
}


module "ecs_worker" {
  source = "../../modules/ecs_service"

  service_name      = "worker-production"
}

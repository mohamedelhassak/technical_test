resource "aws_elasticache_cluster" "example" {
  cluster_id           = "redis-cluster"
  engine               = "redis"
}

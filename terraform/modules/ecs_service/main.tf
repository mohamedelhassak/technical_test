resource "aws_ecs_cluster" "application" {
    name = "application-cluster"

    setting {
        name  = "containerInsights"
        value = "ENABLED"
    }
}

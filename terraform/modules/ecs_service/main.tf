resource "aws_ecs_cluster" "application" {
    name = var.service_name


    setting {
        name  = "containerInsights"
        value = "ENABLED"
    }
}

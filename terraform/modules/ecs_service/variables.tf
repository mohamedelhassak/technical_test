variable "service_name" {
  description = "The name of the ECS service"
  type        = string
}

variable "desired_count" {
  description = "The number of desired tasks for the ECS service"
  type        = number
}

variable "runtime_role_arn" {
  description = "IAM role that the ECS tasks will assume at runtime"
  type        = string
}

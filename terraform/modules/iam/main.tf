# Create a role for application runtime with permissions to access necessary AWS services
resource "aws_iam_role" "app_runtime_role" {
  name = "app-runtime-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    # Define the trust  policy

  })
}

# Create a role for CI/CD pipelines with permissions to deploy applications
resource "aws_iam_role" "cicd_role" {
  name = "cicd-deploy-role"
    assume_role_policy = jsonencode({
    Version = "2012-10-17"

  })
}

# Create a role for DevOps engineers with permissions to manage the infrastructure
resource "aws_iam_role" "devops_role" {
  name = "devops-engineer-role"
    assume_role_policy = jsonencode({
    Version = "2012-10-17"

  })
}

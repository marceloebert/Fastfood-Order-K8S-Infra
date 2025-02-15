resource "aws_ecr_repository" "app_fastfood" {
  name = "Fastfood-Order-API"

  force_delete = true
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Application = "Fastfood-Order"
  }

  lifecycle {
    prevent_destroy = true
  }
}
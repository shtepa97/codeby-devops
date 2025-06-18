data "aws_subnets" "selected" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
}

data "aws_subnet" "details" {
  for_each = toset(data.aws_subnets.selected.ids)
  id       = each.value
}

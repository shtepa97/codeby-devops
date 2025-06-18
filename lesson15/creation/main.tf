data "aws_subnets" "vpc_subnets" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
}

data "aws_subnet" "subnet_details" {
  for_each = toset(data.aws_subnets.vpc_subnets.ids)
  id       = each.value
}

locals {
  zone_subnets = [for subnet in data.aws_subnet.subnet_details : subnet.id if subnet.availability_zone == var.zone]
  
  selected_subnet = length(local.zone_subnets) > 0 ? local.zone_subnets[0] : null
}

resource "aws_instance" "vm" {
  count         = local.selected_subnet != null ? 1 : 0
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = local.selected_subnet

  tags = {
    Name = var.instance_name
  }
}

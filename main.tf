data "aws_ssm_instances" "ssm_instances_lookup" {
  for_each = var.ssm_instances_lookup

  region = each.value.region

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}


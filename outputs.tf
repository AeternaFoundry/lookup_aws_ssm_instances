output "ssm_instances_lookup_id" {
  description = "Map of id values across all ssm_instances_lookup, keyed the same as var.ssm_instances_lookup"
  value       = { for k, v in data.aws_ssm_instances.ssm_instances_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ssm_instances_lookup_filter" {
  description = "Map of filter values across all ssm_instances_lookup, keyed the same as var.ssm_instances_lookup"
  value       = { for k, v in data.aws_ssm_instances.ssm_instances_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "ssm_instances_lookup_ids" {
  description = "Map of ids values across all ssm_instances_lookup, keyed the same as var.ssm_instances_lookup"
  value       = { for k, v in data.aws_ssm_instances.ssm_instances_lookup : k => v.ids if v.ids != null && length(v.ids) > 0 }
}
output "ssm_instances_lookup_region" {
  description = "Map of region values across all ssm_instances_lookup, keyed the same as var.ssm_instances_lookup"
  value       = { for k, v in data.aws_ssm_instances.ssm_instances_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}


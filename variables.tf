variable "ssm_instances_lookup" {
  description = <<EOT
Map of ssm_instances_lookup, attributes below
Optional:
    - region
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    region = optional(string)
    filter = optional(list(object({
      name   = string
      values = list(string)
    })))
  }))
}


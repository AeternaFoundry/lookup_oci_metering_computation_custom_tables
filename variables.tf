variable "metering_computation_custom_tables_lookup" {
  description = <<EOT
Map of metering_computation_custom_tables_lookup, attributes below
Required:
    - compartment_id
    - saved_report_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id  = string
    saved_report_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}


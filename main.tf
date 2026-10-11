data "oci_metering_computation_custom_tables" "metering_computation_custom_tables_lookup" {
  for_each = var.metering_computation_custom_tables_lookup

  compartment_id  = each.value.compartment_id
  saved_report_id = each.value.saved_report_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}


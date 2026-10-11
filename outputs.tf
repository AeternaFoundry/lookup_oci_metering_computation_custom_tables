output "metering_computation_custom_tables_lookup_id" {
  description = "Map of id values across all metering_computation_custom_tables_lookup, keyed the same as var.metering_computation_custom_tables_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_metering_computation_custom_tables.metering_computation_custom_tables_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "metering_computation_custom_tables_lookup_compartment_id" {
  description = "Map of compartment_id values across all metering_computation_custom_tables_lookup, keyed the same as var.metering_computation_custom_tables_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_metering_computation_custom_tables.metering_computation_custom_tables_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "metering_computation_custom_tables_lookup_custom_table_collection" {
  description = "Map of custom_table_collection values across all metering_computation_custom_tables_lookup, keyed the same as var.metering_computation_custom_tables_lookup except keys with no custom_table_collection are omitted"
  value       = { for k, v in data.oci_metering_computation_custom_tables.metering_computation_custom_tables_lookup : k => v.custom_table_collection if v.custom_table_collection != null && length(v.custom_table_collection) > 0 }
}
output "metering_computation_custom_tables_lookup_filter" {
  description = "Map of filter values across all metering_computation_custom_tables_lookup, keyed the same as var.metering_computation_custom_tables_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_metering_computation_custom_tables.metering_computation_custom_tables_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "metering_computation_custom_tables_lookup_saved_report_id" {
  description = "Map of saved_report_id values across all metering_computation_custom_tables_lookup, keyed the same as var.metering_computation_custom_tables_lookup except keys with no saved_report_id are omitted"
  value       = { for k, v in data.oci_metering_computation_custom_tables.metering_computation_custom_tables_lookup : k => v.saved_report_id if v.saved_report_id != null && length(v.saved_report_id) > 0 }
}


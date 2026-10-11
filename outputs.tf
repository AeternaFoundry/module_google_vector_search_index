output "vector_search_indices_id" {
  description = "Map of id values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no id are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vector_search_indices_collection_id" {
  description = "Map of collection_id values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no collection_id are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => v.collection_id if v.collection_id != null && length(v.collection_id) > 0 }
}
output "vector_search_indices_create_time" {
  description = "Map of create_time values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no create_time are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "vector_search_indices_dedicated_infrastructure" {
  description = "Map of dedicated_infrastructure values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no dedicated_infrastructure are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => one(v.dedicated_infrastructure) if v.dedicated_infrastructure != null && length(v.dedicated_infrastructure) > 0 }
}
output "vector_search_indices_deletion_policy" {
  description = "Map of deletion_policy values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no deletion_policy are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "vector_search_indices_dense_scann" {
  description = "Map of dense_scann values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no dense_scann are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => one(v.dense_scann) if v.dense_scann != null && length(v.dense_scann) > 0 }
}
output "vector_search_indices_description" {
  description = "Map of description values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no description are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => v.description if v.description != null && length(v.description) > 0 }
}
output "vector_search_indices_display_name" {
  description = "Map of display_name values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no display_name are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "vector_search_indices_distance_metric" {
  description = "Map of distance_metric values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no distance_metric are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => v.distance_metric if v.distance_metric != null && length(v.distance_metric) > 0 }
}
output "vector_search_indices_effective_labels" {
  description = "Map of effective_labels values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no effective_labels are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "vector_search_indices_filter_fields" {
  description = "Map of filter_fields values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no filter_fields are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => v.filter_fields if v.filter_fields != null && length(v.filter_fields) > 0 }
}
output "vector_search_indices_index_field" {
  description = "Map of index_field values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no index_field are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => v.index_field if v.index_field != null && length(v.index_field) > 0 }
}
output "vector_search_indices_index_id" {
  description = "Map of index_id values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no index_id are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => v.index_id if v.index_id != null && length(v.index_id) > 0 }
}
output "vector_search_indices_labels" {
  description = "Map of labels values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no labels are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "vector_search_indices_location" {
  description = "Map of location values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no location are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => v.location if v.location != null && length(v.location) > 0 }
}
output "vector_search_indices_name" {
  description = "Map of name values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no name are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => v.name if v.name != null && length(v.name) > 0 }
}
output "vector_search_indices_project" {
  description = "Map of project values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no project are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => v.project if v.project != null && length(v.project) > 0 }
}
output "vector_search_indices_store_fields" {
  description = "Map of store_fields values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no store_fields are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => v.store_fields if v.store_fields != null && length(v.store_fields) > 0 }
}
output "vector_search_indices_terraform_labels" {
  description = "Map of terraform_labels values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no terraform_labels are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "vector_search_indices_update_time" {
  description = "Map of update_time values across all vector_search_indices, keyed the same as var.vector_search_indices except keys with no update_time are omitted"
  value       = { for k, v in google_vector_search_index.vector_search_indices : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}


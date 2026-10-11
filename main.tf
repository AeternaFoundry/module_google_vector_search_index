resource "google_vector_search_index" "vector_search_indices" {
  for_each = var.vector_search_indices

  collection_id   = each.value.collection_id
  index_field     = each.value.index_field
  index_id        = each.value.index_id
  location        = each.value.location
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  display_name    = each.value.display_name
  distance_metric = each.value.distance_metric
  filter_fields   = each.value.filter_fields
  labels          = each.value.labels
  project         = each.value.project
  store_fields    = each.value.store_fields

  dynamic "dedicated_infrastructure" {
    for_each = each.value.dedicated_infrastructure != null ? [each.value.dedicated_infrastructure] : []
    content {
      dynamic "autoscaling_spec" {
        for_each = dedicated_infrastructure.value.autoscaling_spec != null ? [dedicated_infrastructure.value.autoscaling_spec] : []
        content {
          max_replica_count = autoscaling_spec.value.max_replica_count
          min_replica_count = autoscaling_spec.value.min_replica_count
        }
      }
      mode = dedicated_infrastructure.value.mode
    }
  }

  dynamic "dense_scann" {
    for_each = each.value.dense_scann != null ? [each.value.dense_scann] : []
    content {
      feature_norm_type = dense_scann.value.feature_norm_type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


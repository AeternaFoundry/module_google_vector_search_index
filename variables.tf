variable "vector_search_indices" {
  description = <<EOT
Map of vector_search_indices, attributes below
Required:
    - collection_id
    - index_field
    - index_id
    - location
Optional:
    - deletion_policy
    - description
    - display_name
    - distance_metric
    - filter_fields
    - labels
    - project
    - store_fields
    - dedicated_infrastructure (block):
        - autoscaling_spec (optional, block):
            - max_replica_count (optional)
            - min_replica_count (optional)
        - mode (optional)
    - dense_scann (block):
        - feature_norm_type (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    collection_id   = string
    index_field     = string
    index_id        = string
    location        = string
    deletion_policy = optional(string)
    description     = optional(string)
    display_name    = optional(string)
    distance_metric = optional(string)
    filter_fields   = optional(list(string))
    labels          = optional(map(string))
    project         = optional(string)
    store_fields    = optional(list(string))
    dedicated_infrastructure = optional(object({
      autoscaling_spec = optional(object({
        max_replica_count = optional(number)
        min_replica_count = optional(number)
      }))
      mode = optional(string)
    }))
    dense_scann = optional(object({
      feature_norm_type = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


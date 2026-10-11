variable "data_classification_catalog_configs" {
  description = <<EOT
Map of data_classification_catalog_configs, attributes below
Required:
    - parent
Optional:
    - auto_tag_configs
    - excluded_schemas
    - included_schemas
    - provider_config
EOT

  type = map(object({
    parent = string
    auto_tag_configs = optional(list(object({
      auto_tagging_mode  = string
      classification_tag = string
    })))
    excluded_schemas = optional(object({
      names = list(string)
    }))
    included_schemas = optional(object({
      names = list(string)
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}


resource "databricks_data_classification_catalog_config" "data_classification_catalog_configs" {
  for_each = var.data_classification_catalog_configs

  parent           = each.value.parent
  auto_tag_configs = each.value.auto_tag_configs
  excluded_schemas = each.value.excluded_schemas
  included_schemas = each.value.included_schemas
  provider_config  = each.value.provider_config
}


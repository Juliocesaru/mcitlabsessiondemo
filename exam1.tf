locals {
  new_clouds  = concat(local.clouds, ["alibaba", "ibm"])
}

output "updated_clouds" {
  value = local.new_clouds
}
output "check_azure" {
  value = contains(local.clouds, "azure") ? "Azure is part of the cloud list" : "Azure is not part of the cloud list"
}

locals {
  clouds       = ["azure", "aws", "gcp"]
  cloud_owners = ["Microsoft", "Amazon", "Google"]
  cloud_map    = zipmap(local.clouds, local.cloud_owners)
}

output "cloud_map" {
  value = local.cloud_map
}

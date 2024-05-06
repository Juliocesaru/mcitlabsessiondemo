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
  cloud_map    = [
    for idx, cloud in local.clouds :
    {
      cloud_name   = cloud
      cloud_owner  = local.cloud_owners[idx]
    }
  ]
}

output "cloud_map" {
  value = local.cloud_map
}
locals {
  nested_list = [[1,2,3],[1,2],[1,2,3,4],[1,2,3,4,5]]
  flattened_list = flatten(local.nested_list)
  sum_of_flattened_list = sum(local.flattened_list)
}

output "flattened_list" {
  value = local.flattened_list
}

output "sum_of_flattened_list" {
  value = local.sum_of_flattened_list
}

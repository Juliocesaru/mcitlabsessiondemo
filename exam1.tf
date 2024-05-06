locals {
  clouds = ["azure", "aws", "gcp"]
}

locals {
  clouds      = ["azure", "aws", "gcp"]
  new_clouds  = concat(local.clouds, ["alibaba", "ibm"])
}

output "updated_clouds" {
  value = local.new_clouds
}
output "check_azure" {
  value = contains(local.clouds, "azure") ? "Azure is part of the cloud list" : "Azure is not part of the cloud list"
}

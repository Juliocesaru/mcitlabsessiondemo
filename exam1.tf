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

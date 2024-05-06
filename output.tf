output "character_enemy_map" {
  value = local.character_enemy_map
  description = "Mapping of characters to the number of enemies they've destroyed."
}
output "sum_of_numbers" {
  value = sum(local.numbers_as_numbers)
  description = "The sum of the provided numbers."
}

output "incremented_output" {
  value = local.incremented_output
}
output "nested_map" {
  value = var.nested_map
}
locals {
  incremented_output = [for i in var.total_output : tostring(tonumber(i) + 10)]
}

output "sports_list_evaluation" {
  value = length(var.winterlistOfSports) > 3 ? "Winter sports list is extensive" : "Winter sports list is limited"
}

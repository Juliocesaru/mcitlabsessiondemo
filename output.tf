output "character_enemy_map" {
  value = local.character_enemy_map
  description = "Mapping of characters to the number of enemies they've destroyed."
}
output "sum_of_numbers" {
  value = sum(local.numbers_as_numbers)
  description = "The sum of the provided numbers."
}
locals {
  incremented_output = [for i in var.total_output : tostring(tonumber(i) + 10)]
}

output "incremented_output" {
  value = local.incremented_output
}

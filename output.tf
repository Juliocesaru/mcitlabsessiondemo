output "character_enemy_map" {
  value = local.character_enemy_map
  description = "Mapping of characters to the number of enemies they've destroyed."
}
output "sum_of_numbers" {
  value = sum(local.numbers_as_numbers)
  description = "The sum of the provided numbers."
}

variable "simple_nested_list"{
  type    = list(list(string))
  default = [["a","b"],["c","d"],["e","f"]]
}
output "flattened-list"{
value = flatten(var.simple_nested_list)
}
variable "nested_list"{
  type = list(list(string))
  default = [["a","b"],["c","d"],["e","f"]]
}
output "nested_list"{
  value = flatten(var.simple_nested_list)
}
variable "nested_map"{
  type    = map(map(string))
  default = {
    group1 = {"name" = "Peter", "age" = "28"}
    group2 = {"name" = "Lukas", "age" = "32"}
    group3 = {"name" = "Luis", "age" = "23"}
    group4 = {"name" = "Kane", "age" = "35"}
}
}

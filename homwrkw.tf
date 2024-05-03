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
output "simple_nested_list"{
  simple_local_flattened_list = flatten(var.simple_nested_list)
  flattened_list = flatten(var.nested_list)
  }

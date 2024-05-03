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


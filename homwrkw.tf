variable "countries_list"{
   default = ["Mexico","Greece","Italy","Germany","Portugal"]
  }

output "countries_as_string"{
  value = join("+",var.countries_list)
}

output "is_Canada_in_list"{
  value = contains(var.countries_list,"Canada")
  }

output "merged_string"{
  value = trim("i love" + "Canada"," ")
}


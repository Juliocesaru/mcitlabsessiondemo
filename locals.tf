locals{
  servicename="abracadabra"
  forum="abracadabramcit"
  lengthsa=length(local.servicename)
  lengthforum=length(local.forum)
  firstname="julio"
  lastname="urueta"
  city="Montreal"
  lengthfirstname=length(local.firstname)
  lengthlastname=length(local.lastname)
}
output "print"{
    value = local.servicename
}
output "secondprint"{
    value = local.forum
}
output "lengthsa"{
    value=local.lengthsa
}
output "lengthforum"{
    value=local.lengthforum
}
output "printfirstname"{
    value = local.firstname
}
output "printlastname"{
    value = local.lastname
}
output "printcity"{
    value = local.city
}
locals{
  characters = ["luke", "yoda", "darth"]
  enemies_destroyed = [4252, 900, 20000056894]
  character_enemy_map =   { for index,character in local.characters: # Convert character list to a set
      character => local.enemies_destroyed[index]
  }
}
variable "winterlistOfSports" {
  type    = list(string)
  default = ["icehockey", "snowboarding", "iceskating"]
}
locals {
  numbers_as_strings = ["724","238","219","291","555"]
  numbers_as_numbers = [for str in local.numbers_as_strings: tonumber(str)]
}
locals {
  presidents = ["Obama", "Justin", "Kim Jong Un"]
  countries = ["United States", "Canada", "North Korea"]
  presidents_countries_map = zipmap(local.presidents, local.countries)
}

output "presidents_countries_map" {
  value = local.presidents_countries_map
  description = "A map of presidents to their respective countries."
}
locals {
  nested_list = [[2,2,2],[1,2,3],[2,3,2],[3,1,3]]
  flattened_list = flatten(local.nested_list)
}

output "flattened_list" {
  value = local.flattened_list
  description = "A flattened list of all elements."
}
variable "user_roles" {
  type    = map(string)
  default = {
    alice = "admin"
    bob   = "editor"
    charlie = "viewer"
  }
}
variable "default_role" {
  type    = string
  default = "guest"
}
 
locals {
  user_role_lookup = {
    alice   = lookup(var.user_roles, "alice", var.default_role)
    bob     = lookup(var.user_roles, "bob", var.default_role)
    david   = lookup(var.user_roles, "david", var.default_role)
  }
}
 
output "user_roles_result" {
  value = local.user_role_lookup
}
variable "total_output" {
  type    = list(string)
  default = ["150", "150", "150"]
}


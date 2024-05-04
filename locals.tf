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
locals {
  numbers_as_strings = ["724","238","219","291","555"]
  numbers_as_numbers = [for str in local.numbers_as_strings: tonumber(str)]
}


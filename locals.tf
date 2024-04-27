locals{
  servicename="abracadabra"
  forum="abracadabramcit"
  lengthsa=length(local.servicename)
  lengthforum=length(local.forum)
  firstname="julio"
  lastname="urueta"
  city="Montreal"
  lenghtfirstname=lenght(local.firstname)
  lenghtlastname=lenght(local.lastname)
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

variable "subscription_id"{
  type=string
}

variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}
variable "prefix"{
 type=string
 default="samiislam"
}
variable "firstname"{
 type=string
 default="sami"
}
variable "lastname"{
 type=string
 default="islam"
}
variable "account_tier"{
  type=string
  default="Standard"
}
variable "access_tier"{
  type=string
  default="Cool"
}
variable "account_replication_type"{
  type=string
  default="GRS"
}
variable "cross_tenant_replication_enabled"{
 type=bool
 default=false
}

variable "environment"{
 type=string
 default="staging"
}
variable "summersports"{
    type =list(string)
    default=["soccer","basketball","badminton","tabletennis"]
}
output "summersportslist"{
    value=[for summersport in var.summersports:summersport ]
}
variable "universities"{
    type =list(string)
    default=["McGill","Concordia","UQAM","UdeMontreal","Teluq"]
}
output "universitieslist"{
    value=[for universities in var.universities:universities ]
}
variable "restaurants"{
    type =list(string)
    default=["Amir","Rodizio","Scores","Souvlaki Bar","Barbies"]
}
output "restaurantslist"{
    value=[for restaurants in var.restaurants:restaurants ]
}
locals {
  total_output = ["150","150","150"]
}
output "sumofthreenumbers"{
    value=sum([for numberoutput in local.total_output: tonumber(numberoutput)])
}
locals {
  listOfNumbers = ["4","5","1","2","3","4","5"]
}
output "sumofsevennumbers"{
    value=sum([for numberoutput in local.listOfNumbers: tonumber(numberoutput)])
}
variable "nested_map" {
  type    = map(map(string))
  default = {
    group1 = {
      "name" = "Alice",
      "age"  = "25"
    },
    group2 = {
      "name" = "Bob",
      "age"  = "30"
    },
    group3 = {
      "name" = "Charlie",
      "age"  = "35"
    }
  }
}

variable{ 
  cluster_names=["CCRF2301_Calicluster","CCRF2301_Eastcluster","CCRF2301_Northcluster","CCRF2301_Southcluster","Uptown"]
}


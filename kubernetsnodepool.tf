resourse "azurerm_kubernets_cluster_node_pool" 'kubenode1pool"{
for_each                = azurerm_kubernets_cluster.batchabcd
name                    = "${each.key}"
kubernets_cluster_id    = each.value.id
vm_size                 = "Standar_DS2_V2"
node_count              = 1

tags = {
  Environment = "Production"
 }
}


output "gateway_ip" {
  value =  client_network.gateway_ip.ip_address
}

output "storage_accnt_pub_name" {
  value = storage.accntpub.name
}

output "container_static_name" {
  value = { for id in keys(storage.cont_static) : id =>  storage.cont_static[id].name}
}

output "container_media_name" {
  value = { for id in keys(storage.cont_media) : id =>  storage.cont_media[id].name}
}

output "subnets" {
  value = { for id in keys(client_network.subnets) : id => client_network.subnets[id].id}
}

output "db_subnet_id" {
  value = client_network.subnets["DB-Delegated"].id
}

output "databases" {
  value = {for id in keys(dbservers.databases) : id => dbservers.databases[id].id }
}
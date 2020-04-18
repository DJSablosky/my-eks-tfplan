#----root/outputs.tf-----

#----storage outputs------

output "Project_Name" {
  value = "${module.storage.project_name}"
}

output "Bucket_Names" {
  value = "${module.storage.bucketname}"
}

#---Networking Outputs -----

output "Public_Subnets" {
  value = "${join(", ", module.networking.public_subnets)}"
}

output "Subnet_IPs" {
  value = "${join(", ", module.networking.subnet_ips)}"
}

output "Public_Security_Group" {
  value = "${module.networking.public_sg}"
}

output "Ingress_Port_Mapping" {
  value = "${module.networking.ingress_port_mapping}"
}


#---Compute Outputs ------

output "Public_Instance_IDs" {
  value = "${module.compute.server_id}"
}

output "Public_Instance_IPs" {
  value = "${module.compute.server_ip}"
}
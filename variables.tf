variable "region" {}
variable "key_name" {}
variable "instype" {}
variable "path_to_file" { default = "./puppetagent.sh"}
variable "subnet_id" { type = "list" }
variable "puppetmaster_dns" {}
variable "environment" {}
variable "puppet_ip" {}

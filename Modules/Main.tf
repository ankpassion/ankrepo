#source module from module folder
resource "local_file" "lfblock" {
  filename = "test123"
  content = "testing 123"
}

module "netmod" {
  source = "./network"
  netblock = "10.129.0.0/16"
  websubnetblock = "10.129.111.0/24"
  dbsubnetblock = "10.129.222.0/24"
}

module "vmmod" {
  source = "./compute"
  vmsize = "t2.micro"
  vmsubnetid = module.netmod.vpcwsnetdata
  vmenv = "testMODVM"
}
module "stmod" {
  source = "./storage"
  s3name = "ank-demos3333mod"
}

output "netout" {
 value = module.netmod
}

output "vmout" {
  value = module.vmmod
}
output "stout" {
  value = module.stmod
}

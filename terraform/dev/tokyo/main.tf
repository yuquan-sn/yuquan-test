
// Aside from the TODOs you don't need to make any modifications to this file
// Instead, add your resources to the `module` folder
terraform {
  backend "s3" {
    region = "ap-northeast-1"
    bucket = "terraform-remote-state-smartnews-dev-ap-northeast-1"
    key    = "sn-example/sn-exampole-terraform.tfstate" # TODO change me to <<system>>/<<repository>>.tfstate
  }

  required_version = ">=0.14.0"
}

module "main" {
  source  = "../../module"
  system  = "sn-example" # TODO change me
  env     = "dev"
  region  = "ap-northeast-1"
  team    = "Site-Reliability-Engineering" # TODO change me
  cluster = "spaas_sn"
  cost    = "smartnews"
}

output "output" {
  value = module.main.output
}

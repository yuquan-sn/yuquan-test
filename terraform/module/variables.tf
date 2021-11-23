
// You don't need to change anything in this file
variable "cost" {
  description = "The organization name (used for cost), e.g. smartnews, smart-ad or common"
  default     = "smartnews"
}

variable "cluster" {
  description = "The cluster name, one of spaas_sn or spaas_ad"
  default     = "spaas_sn"
}

variable "system" {
  description = "The system name"
}

variable "env" {
  description = "The environment name in three-character short form, e.g. dev or prd"
}

locals {
  environments = {
    dev = "development",
    prd = "production",
    mst = "master",
  }
  environment = lookup(local.environments, var.env, "")
}

variable "region" {
  description = "The region code for the aws region, e.g. ap-northeast-1 or us-west-2"
}

variable "team" {
  description = "The team that is the owner of this system, from the organization chart"
}

locals {
  aws_account_ids = {
    dev = "226604077721",
    prd = "165463520094",
    mst = "503035900230",
  }
}


// You don't need to change anything in this file
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    datadog = {
      source = "datadog/datadog"
    }
  }
  required_version = ">=0.14.0"
}

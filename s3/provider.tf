provider "aws" {
  region  = lookup(var.props, "region")
  profile = lookup(var.props, "profile")
}

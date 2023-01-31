module "dev" {
  source = "git@github.com:path/to/your/module/repo//vpc?ref=2.0.0"

  availability_zones = ["ap-southeast-2a"]
  namespace          = "dev"
  single_nat         = true
  vpc_cidr           = "172.29.0.0/16"
}

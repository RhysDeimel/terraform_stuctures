module "test" {
  source = "git@github.com:path/to/your/module/repo//vpc?ref=2.0.0"

  availability_zones = ["ap-southeast-2a", "ap-southeast-2b"]
  namespace          = "test"
  vpc_cidr           = "172.29.0.0/16"
}

module "dev" {
  source = "git@github.com:path/to/your/module/repo//vpc?ref=1.0.0"

  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
  namespace          = "prod"
  vpc_cidr           = "172.29.0.0/16"
}

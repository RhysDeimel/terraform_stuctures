```
terraform init -backend-config backends/<env>.hcl
terraform plan -var-file="vars/<env>.tfvars"
terraform apply -var-file="vars/<env>.tfvars"
```
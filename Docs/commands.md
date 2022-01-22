# Terraform Commands

Terraform Docs: [https://www.terraform.io/cli/commands](https://www.terraform.io/cli/commands)

## Initialize Providers

``` bash
terraform init
```

## Visualize the changes without creating

``` bash
terraform plan
```

## Apply changes

``` bash
terraform apply
```

## Get the current state and update the state files

```bash
terraform refresh
```

## Destroy all resources created by Terraform under current directory

``` bash
terraform destroy
```

## Destroy only specifc resources under current directory

``` bash
terraform destroy -target=resource_type.local_resource_name
```
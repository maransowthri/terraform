# Terraform Commands

Terraform Docs: [https://www.terraform.io/cli/commands](https://www.terraform.io/cli/commands)

## Initialize Providers

```bash
terraform init
```

## Visualize the changes without creating

```bash
terraform plan
```

## Apply changes

```bash
terraform apply
```

## Get the current state and update the state files

```bash
terraform refresh
```

## Destroy all resources created by Terraform under current directory

```bash
terraform destroy
```

## Destroy only specifc resources under current directory

```bash
terraform destroy -target=resource_type.local_resource_name
```

## To set the logging level and output path

```bash
export TF_LOG=TRACE
export TF_LOG_PATH=./logs
```

## To format the the Terraform files

```bash
terraform fmt
```

## To validate the syntax of the Terraform files

```bash
terraform validate
```

## To recreate resources due to drift

```bash
terraform taint aws_instance.myec2
```

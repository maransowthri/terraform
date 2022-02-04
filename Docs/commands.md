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

## Set logging level and output path

```bash
export TF_LOG=TRACE
export TF_LOG_PATH=./logs
```

## Format Terraform files

```bash
terraform fmt
```

## Validate the syntax of the Terraform files

```bash
terraform validate
```

## Recreate resources due to drift

```bash
terraform taint aws_instance.myec2
```

## Create a visual representation of the Terraform state

```bash
terraform graph > graph.dot
```

## Saving terraform plan into a file to apply it in future

```bash
terraform plan -out=plan.tfplan
terraform apply plan.tfplan
```

## Extract the value of an output variable

```bash
terraform output my_output_variable
```

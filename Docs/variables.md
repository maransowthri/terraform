# Terraform Variables

Terraform Docs: [https://www.terraform.io/language/values/variables](https://www.terraform.io/language/values/variables)

## Defining variable with environment variables

Terraform searches the environment of its own process for environment variables named `TF_VAR_` followed by the name of a declared variable.

```bash
export TF_VAR_image_id=ami-abc123
terraform plan
...
```

## Defining variables with command line arguments

To specify individual variables on the command line, use the -var option when running the terraform plan and terraform apply commands:

```bash
terraform apply -var="image_id=ami-abc123"
terraform apply -var='image_id_list=["ami-abc123","ami-def456"]' -var="instance_type=t2.micro"
terraform apply -var='image_id_map={"us-east-1":"ami-abc123","us-east-2":"ami-def456"}'
```

## Defining variables with files (`.tfvars`)

To set lots of variables, it is more convenient to specify their values in a variable definitions file (with a filename ending in either .tfvars or .tfvars.json) and then specify that file on the command line with -var-file:

```bash
terraform apply -var-file="sample.tfvars"
```

example `.tfvars` file:

```bash
image_id = "ami-abc123"
availability_zone_names = [
  "us-east-1a",
  "us-west-1c",
]
```

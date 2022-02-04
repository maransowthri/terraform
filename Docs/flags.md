# Below flags can be passed along with terraform command to control the behavior

Terraform Docs: [https://www.terraform.io/cli/commands](https://www.terraform.io/cli/commands)

## Skip yes / no prompt

```bash
terraform apply -auto-approve
```

## Target particular resources

```bash
terraform apply -target=resource_type.local_resource_name
```

## To skip refresh of the state file

```bash
terraform apply -refresh=false
```

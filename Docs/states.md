# Terraform States

[Terraform State Configs](https://www.terraform.io/language/state)

## List down the resources created by terraform

```bash
terraform state list
```

## Rename resources in the state without recreating resources

```bash
terraform state mv aws_instance.myec2 aws_instance.new_name
```

## Look into the state file from remote backend

```bash
terraform state pull
```

## Manually upload a local state file to remote backend

```bash
terraform state push
```

## Remove resource from state file without destroying it

```bash
terraform state rm aws_instance.myec2
```

## Show attributes of a single resource

```bash
terraform state show aws_instance.myec2
```

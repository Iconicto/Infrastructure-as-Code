# Infrastructure-as-Code
This Repository Terraform configs for cloud Infrastructure which support Iconicto's *public* projects. At Iconicto we have lot of small, small individual projects. So rather than making it a one big terraform deployment, we decided on creating Terraform modules for each project so we can `apply` or `destroy` them individually.

> Disclaimer: This is meant to be a example/portfolio project for an implementation of Infrastructure-as-Code (IaC) rather than a project that every one can just clone and use against their own infrastructure

## How to Run

### Clone Project

```bash
git clone git@github.com:Iconicto/Infrastructure-as-Code.git
cd Infrastructure-as-Code
```

### Setup Terraform

Initialize Terraform

```bash
terraform init
```

Create terraform.tfvars

```bash
cp terraform.tfvars.sample terraform.tfvars
```

Fill in variables with actual values

### Deploy services

Isala.me

```bash
terraform apply -target=module.isala_me
```
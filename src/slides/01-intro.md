# Terraform

I'm not an expert,<br /> I have learnt something

<!--

Recent project experience:

- disposable environments
- running in separate AWS sub-accounts

Not going to cover expert topics:

- loops
- kubernetes
- collaboration or remote backends
- module registry

-->

---

```sh
$ terraform --version
Terraform v0.11.13
```

<!--

- breaking changes in 0.12
- delayed, quarter 1 2019
- improvements to Hashicorp Configuration Language HCL

-->

---

# HCL

<!--

1:1 mapping to JSON in 0.12

https://www.terraform.io/docs/glossary.html

-->

- Provider

<!-- plugin, tied to an infrastructure provider -->

- Resource

<!-- object that terraform manages: creates, modifies or destroys -->

- State

<!-- cached information about managed infrastructure, often shared -->

---

# Provider

<!-- gcloud auth application-default login -->

```sh
$ terraform init
```

---

# Provider documentation

![Google Cloud provider documentation](./documentation.png)

https://www.terraform.io/docs/providers/google/index.html → `…/d/…`

<!-- https://www.terraform.io/docs/providers/google/d/datasource_compute_instance.html -->

---

# Resource

```sh
$ terraform apply
$ gcloud compute ssh example
```

<!-- https://console.cloud.google.com/compute/instances -->

---

# Tools

`$ terraform fmt`

<!-- like black or prettier -->

Ansible terraform module

<!-- TODO: need to add screenshot -->

---

# Documentation

Resources or https://www.terraform.io/docs/providers/google/

---

# 11 March 2019

```
$ curl --silent https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_SHA256SUMS | grep linux_amd64
5925cd4d81e7d8f42a0054df2aafd66e2ab7408dbed2bd748f0022cfe592f8d2  terraform_0.11.13_linux_amd64.zip
$ curl --silent https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_SHA256SUMS | grep linux_amd64
d57dd17c61a63073191503302ea44352ba7a274e2c7944c4b38b97477a347aa5  terraform_0.11.13_linux_amd64.zip
```

> Very sorry you encountered this issue @maxwell-k. We pushed new zip files
> earlier today after getting feedback that the Solaris binaries did not got
> uploaded properly during the initial upload.

> To be a bit more explicit, if a situation like this occurs again we plan to
> issue a new release and not re-issue a previous release.

<!--

The Tao of HashiCorp is the foundation that guides our vision,
✂
Immutability is the inability to be changed
✂
https://www.hashicorp.com/tao-of-hashicorp

-->

---

# Why terraform?

- Open source
- Portable across vendors
- Reproducible

<!-- vim: set spellcapcheck= nowrap conceallevel=0 : -->

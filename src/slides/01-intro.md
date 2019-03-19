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

# Why terraform?

- Open source
- Portable\*
- Reproducible
- Disposable environments

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

- 1:1 mapping to JSON in 0.12

https://www.terraform.io/docs/glossary.html

-->

- Provider

<!-- plugin, tied to an infrastructure provider -->

- Resource

<!-- object that terraform manages: creates, modifies or destroys -->

- State

<!-- cached information about managed infrastructure, often shared -->

---

# Tools and documentation

`$ terraform fmt`

<!-- like black or prettier -->

---

# Documentation

Resources or https://www.terraform.io/docs/providers/google/

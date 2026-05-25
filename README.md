# Platform Infrastructure
Infrastructure-as-Code (IaC) repository for provisioning and managing cloud infrastructure using Terraform, AWS, Kubernetes, and GitHub Actions.
# Overview
platform-infrastructure manages the foundational infrastructure required to run platform services and applications.

This repository is responsible for:

- AWS infrastructure provisioning
- Kubernetes cluster management (EKS)
- Networking and security
- IAM roles and permissions
- Terraform state management
- CI/CD infrastructure workflows
- GitOps infrastructure integration

Application deployments are managed separately in the platform-applications repository.
# Architecture
The infrastructure stack includes:

- AWS VPC
- Amazon EKS Cluster
- Public & Private Subnets
- NAT Gateways
- Security Groups
- IAM Roles & Policies
- Application Load Balancers
- Route53 DNS
- ArgoCD GitOps Integration
# Tech Stack
Infrastructure is built using:
- Terraform
- AWS
- Amazon EKS
- Kubernetes
- Helm
- ArgoCD
- GitHub Actions
- Docker
- Prometheus & Grafana


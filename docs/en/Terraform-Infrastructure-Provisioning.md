# Terraform Infrastructure Provisioning

This document describes how DevHubOne infrastructure is automatically provisioned
as code using Terraform.

## What is Terraform and how we use it?

Terraform is an open-source infrastructure-as-code (IaC) tool that allows users
to define and provision infrastructure using declarative configuration files.

In DevHubOne, Terraform is utilized to manage both Vercel and AWS infrastructure,
automating the deployment and scaling of the organization applications, such as
the main website and the entirety of DevHubOne Guild. Additionally, it is used
to configure and maintain GitHub repositories, the main Discord server, etc.

This enables us to streamline our operations with reliable and repeatable processes.

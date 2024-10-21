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

This enables us to streamline our operations with reliable, repeatable and well-documented
processes.

## Terraform automation via GitHub Workflows

To automate the Terraform workflows, we have set up two key GitHub Actions workflows:
**Terraform Plan** and **Terraform Apply**. These workflows ensure that any changes
to infrastructure are reviewed and deployed using Terraform Cloud.

### Terraform Plan Workflow

The `terraform-plan.yaml` workflow runs automatically when a pull request that
affects the `terraform/` directory is created or updated. This workflow performs
the following steps:

1. **Checkout the Repository**
   The workflow checks out the latest code from the repository.

2. **Setup Terraform CLI**
   It sets up the Terraform CLI and uploads the configuration to Terraform Cloud
   in the project workspace.

3. **Create Plan Run**
   A speculative plan run is created in Terraform Cloud, which will check which
   the resources will be added, changed, or destroyed without actually making any
   changes.

4. **Retrieve Plan Output**
   The output of the plan (number of resources to add, modify, or destroy) is fetched
   from Terraform Cloud.

5. **Update the PR with Plan Summary**
   The workflow checks for any previous bot comments on the pull request and updates
   or replaces them with the latest Terraform plan summary. This summary includes
   a link to the full plan on Terraform Cloud and provides clear details on what
   infrastructure changes are proposed.

### Terraform Apply Workflow

The `terraform-apply.yaml` workflow is triggered when changes are merged into the
main branch. This workflow is responsible for applying the Terraform configuration
changes to the actual infrastructure. It performs the following steps:

1. **Checkout the Repository**
   Like in the plan workflow, this step checks out the latest version of the repository.

2. **Setup Terraform CLI**
   The configuration is uploaded to Terraform Cloud in the corresponding workspace.

3. **Create Apply Run**
   An apply run is initiated to deploy the new configuration to the infrastructure.
   This will execute the changes planned during the terraform plan step, such as
   adding, modifying, or deleting resources.

4. **Apply Changes**
   If the run is validated successfully by the Terraform Cloud, the workflow applies
   the changes.

Both workflows ensure we have a reliable infrastructure deployment pipeline. The
`Terraform Plan` workflow ensures that changes are reviewed before merging, and the
`Terraform Apply` workflow ensures that changes are automatically applied after
they are approved and merged into the main branch.

## GitHub Repositories Management

In DevHubOne, Terraform is used to manage various aspects of our GitHub repositories,
ensuring consistency and automation in our repository settings. Key elements managed
include:

- **Repository Configuration**
  Repository settings like visibility, project features (issues, projects), and merge
  checks and restrictions.

- **Branch Protection**
  Terraform enforces protection rules on critical branches, requiring reviews and
  status checks for any changes.

- **Issue Labels**
  Creation and management of predefined labels are also handled via Terraform,
  ensuring proper categorization and tracking of issues and pull requests.

- **Milestones**
  Terraform also defines project milestones to track major goals and deadlines
  across repositories.

This approach allows us to maintain a consistent setup across all repositories,
including `devhubone-guild` and `devhubone-infrastructure`.

## Vercel Infrastructure Management

For our Vercel deployments, Terraform is used to automate the setup and configuration
of our projects. This includes:

- **Project Configuration**
  Managing project settings such as build sources, build commands, output directories,
  etc.

- **Deployment Domains**
  Automatically configuring custom domains and handling redirects between them.

This ensures that Vercel projects like `devhubone-guild` are set up consistently
and automatically, simplifying our deployment workflows.

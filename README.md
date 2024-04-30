# Terraform AWS Infrastructure Project

This repository contains the Terraform code for provisioning a scalable and resilient infrastructure in AWS, as part of the NTI DevOps and Automation Initiative course. The infrastructure includes a Virtual Private Cloud (VPC) with multiple subnets spread across different Availability Zones (AZs), Auto Scaling Groups (ASGs), load balancers, and application servers.

## Features

- **Modular Architecture**: The infrastructure is designed using Terraform modules, allowing for easy reuse and maintenance of code.
- **High Availability**: Resources are deployed across multiple AZs to ensure high availability and fault tolerance.
- **Public and Private Subnets**: Public subnets are used for resources that require direct internet access, while private subnets are used for internal resources.
- **Auto Scaling**: Auto Scaling Groups are employed to automatically adjust the number of instances based on traffic demand, ensuring optimal performance and cost efficiency.
- **Load Balancing**: Both internal and external load balancers are utilized to distribute traffic across instances and improve scalability and availability.
- **Reverse Proxy Configuration**: Nginx is installed on the public instances with reverse proxy configuration to route incoming requests to the appropriate backend services.
- **Internal Load Balancer**: An internal load balancer is used to route traffic to the private instances, ensuring secure communication within the VPC.

## Usage

To deploy the infrastructure, follow these steps:

1. **Prerequisites**: Ensure you have Terraform installed on your local machine.
2. **Clone the Repository**: Clone this repository to your local machine.
3. **Initialize Terraform**: Run `terraform init` to initialize the Terraform configuration.
4. **Configure Variables**: Update the `terraform.tfvars` file with your AWS credentials and any other required variables.
5. **Deploy Infrastructure**: Run `terraform apply` to deploy the infrastructure to AWS.
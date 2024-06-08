# AWS-Security-Lab

vulnerable_aws_project/
├── main.tf
├── modules/
│ ├── ec2/
│ │ └── main.tf
│ ├── rds/
│ │ └── main.tf
│ ├── s3/
│ │ └── main.tf
│ ├── ecs/
│ │ └── main.tf
│ └── iam/
│ └── main.tf
└── README.md

shell
Copy code

## Deployment Instructions

### Step 1: Initialize the Terraform Project

Navigate to the project directory and run:

```bash
terraform init
Step 2: Plan and Apply the EC2 Module
To create the EC2 instance with common misconfigurations:

bash
Copy code
terraform plan -target=module.ec2
terraform apply -target=module.ec2
Step 3: Plan and Apply the RDS Module
To create the RDS instance with common misconfigurations:

bash
Copy code
terraform plan -target=module.rds
terraform apply -target=module.rds
Step 4: Plan and Apply the S3 Module
To create the S3 bucket with common misconfigurations:

bash
Copy code
terraform plan -target=module.s3
terraform apply -target=module.s3
Step 5: Plan and Apply the ECS Module
To create the ECS cluster with common misconfigurations:

bash
Copy code
terraform plan -target=module.ecs
terraform apply -target=module.ecs
Step 6: Plan and Apply the IAM Module
To create the IAM user and policy with common misconfigurations:

bash
Copy code
terraform plan -target=module.iam
terraform apply -target=module.iam
Cleaning Up
To destroy all resources created by this project:

bash
Copy code
terraform destroy
Contributing
Contributions are welcome! Please submit a pull request or open an issue to discuss any changes.

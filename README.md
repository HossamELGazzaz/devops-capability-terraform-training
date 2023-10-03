# devops-capability-terraform-training
## lab1

- create your own folder to run the project from 
    - mkdir dev
    - cd dev
    - mkdir terraform
    - cd terraform

- set the aws key to be able to access the aws cloud.
    - export AWS_ACCESS_KEY_ID=<use access key provided on the aws sandbox>
    - export AWS_SECRET_ACCESS_KEY=<use access key provided on the aws sandbox>

- Create files main.tf
	- In the main.tf define s3 bucket		
	- set the bucket access control list "acl" to private				
	- enable versioning for the s3 bucket

- Create provider.tf, in this file define the following
	- Aws provider minimum version “~>4.16”
	- Terraform minimum version “>=1.1.0”
	- Aws region  “us-east-1”

- Run terraform init
- Run terraform fmt
- Run terraform validate
- Run terraform plan

- Create variables.tf file 
	- Define 1 variable called bucket_name as string

- Update the main.tf "aws_s3_bucket" to set the bucket name to the variable defined


- In the terraform plan pass the name of the bucket name 
	- terraform plan -var="bucket_name=<choose a name>"
	
- Create file lab.tfvars
	- set the bucket_name ="<username>"
	
- Run the terraform plan with the labs.tfvars as an input. 
	- terraform plan -var-file=lab.tfvars

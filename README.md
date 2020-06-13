_*Assumption:* AWS CLI is configured and have got the required credentials in ~/.aws/credentials file._

### First Timers:
* Install terraform
* Initialise in the root folder with `terraform init`
* To run the terraform commands, type command in the root folder followed by folder name that contains \*.tf file.
e.g. `terraform plan ec2_example`

### Useful commands for quick reference
* terraform plan -- Like a dry run, which tells you what resourece/s is/are going to be created/updated without actually doing the operation.
* terraform apply -- Creates/updates the resource/s.
* terraform show -- Displays all the details of the resources which are already created by the given \*.tf file.
* terraform destroy -- Terminates all the resources that have been created by the given \*.tf file.

# Amazon EKS Terraform Plan
Terraform configuration for Kubernetes cluster on AWS

### Prerequisites
Terraform v0.12.24

## Deployment

### Initialize Terraform

```
$ export AWS_ACCESS_KEY_ID="[ACCESS_KEY]"
$ export AWS_SECRET_ACCESS_KEY="[SECRET_KEY]"
$ terraform init
```

#### Initialize Terraform for Windows PowerShell
```
$ $Env:AWS_ACCESS_KEY_ID="[ACCESS_KEY]"
$ $Env:AWS_SECRET_ACCESS_KEY="[SECRET_KEY]"
$ terraform init
```

### Validate changes

```
$ terraform validate
```

### Plan the changes

```
$ terraform plan
```

### Apply the changes

```
$ terraform apply -auto-approve
```

### Destroy environment

```
$ terraform destroy -auto-approve
```

## Built With

* [Amazon Web Services](https://aws.amazon.com) - Cloud Computing Services
* [Terraform](https://www.terraform.io/) - Infrastructure as Code
* [Visual Studio Code](https://code.visualstudio.com) - Code Editor

## Author
* **Daniel Sablosky** - *Initial work*

## License

This project is licensed under the GNU General Public License - see the [LICENSE.md](License.md) for details
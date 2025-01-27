bucket_name = "my-bucket-akylb"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-eu-central-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
us_availability_zone = ["us-east-1a", "us-east-1b"]


public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDDMypGcNXem78GWS4PRfZvzku5j+JGRgCmAg3pzNyIZtThgqdswvoh/l5GvzYtZCbYpicTntrUZK4YT/YuW++REyyPJLLT4+7aI4IlJiAjBACsBysEeHQ9LT6DUEUlUzhcI14bzr8NlmVvG6oOirnhkHaulURqgrhMt1Z07Jb53ub+tTQ8S57HJwwSF3NMWkEUbWPSpKOz6EIEVqVQfTA4zx4EovFZ16jMcxXpaJuW/7uah3ganAwrUn69WaTHXAwneEwMmQM3wUPqWEpLOlxUsFxD9F2qK/krdW9DwAzIRPw0lEl5HcHlKQ3mKlbRcJEQlBkBCe8hVtAEgLGDrTbbm+NWuhzDJ9uM7ixZABwTyl4AGA21K9ZPahuyg1soYywBYXDkdy9NRbNf56AGMbvLCn0ykciKTxlEuF66QPio/S/X7ijf988oPs6wWtHrN90caYd/77Lt5vo6nzET6bS01i0nvJAX/uQdmZRduneEI4aR+68lzMfcYDoTfYxyFEc= akylb@akyl"
ec2_ami_id = "ami-0e1bed4f06a3b463d"

ec2_user_data_install_apache = ""

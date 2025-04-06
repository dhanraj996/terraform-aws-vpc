variable "project_name" {
  
}

variable "environment" {
  
}

variable "common_tags" {
    type= map
    
}

variable "vpc_cidr" {
  
}

variable "enable_dns_hostnames" {

    default= true
  
}

variable "vpc_tags"{

    default = {

    }
  
}

variable "igw_tags"{
    default = {}
  
}

variable "nat_gateway_tags" {
    default = {}
}

#Public subnet
variable "public_subnet_cidrs"{
    type = list

    validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "please enter 2 valid public subnet CIDR"
  }
}

variable "public_subnet_tags"{
    default = {}
}


#private subnet
variable "private_subnet_cidrs"{
    type = list

    validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "please enter 2 valid private subnet CIDR"
  }
}

variable "private_subnet_tags"{
    default = {}
}

#Database subnet
variable "database_subnet_cidrs"{
    type = list

    validation {
    condition     = length(var.database_subnet_cidrs) == 2
    error_message = "please enter 2 valid database subnet CIDR"
  }
}

variable "database_subnet_tags"{
    default = {}
}
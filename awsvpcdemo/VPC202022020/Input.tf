
# Region for creation

variable region {
    type        =   string
    default     =   "us-west-2"
    description =   "target region of creating variable"
}

# VPC Creation

variable VPC_Cidr {
    type      =   string
    default     =   "192.168.0.0/16"
    description =   "Range of CIDR"
}


# AZ's Creation

variable availability_zone {
    type      =   list(string)
    default     =   ["a","b","c","a"]
    description =   "availability_zone for CIDR Range"
}
# Sub net Tag's
 variable subnet_Tag{
       type      =   list(string)
    default     =   ["WEB","APP","DB","MGMT"]
    description =   "Subnet tags"
 }

 ## Variable VPC Tag

 variable VPC_Tag{
       type      =   string
    default     =   "From Terraform Schalla"
    description =   "VPC Tag infromation"
 }
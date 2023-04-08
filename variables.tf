variable "location" {
  type        = string
  description = "The region for the deployment"
  default     = "southcentralus"
}

variable "settings" {
  type = map(string)
  default = {
    basestack   = "r3us"
    environemnt = "delta"
  }
}

variable "virtual_network" {
  type        = map(any)
  description = "Name of network and address space in CIDR"
  default = {
    name           = "vnet"
    address_space  = "10.1.0.0/16"
    address_prefix = "10.1"
  }
}

variable "client_name" {
  type    = string
  default = "delta"
}

variable "subnet_size" {
  type    = string
  default = "large"
}


variable "common_tags" {
  type = map(string)
  default = {
    BillingEnvironment = "r3us"
    BillingRetailer    = "delta"
    BillingApplication = "REB3"
  }
}

/*
  Scaleset VM settings
*/
variable "number_of_machines" {
  type        = number
  default     = 3
  description = "number of machines to place into the availability set"
}

/*
  Flexible DB Settings
*/

variable "admin_login" {
  type    = string
  default = "wolfgang"
}

variable "admin_pwd" {
  type    = string
  default = "!Wolf123Gang@"
}

variable "storage" {
  type        = number
  default     = 32768
  description = "db storage reserved in MB"
}

variable "db_version" {
  type    = string
  default = "12"
}
/*
  Storage Account Container Settings
*/

variable "private_containers" {
  type        = list(string)
  default     = ["RdsBackupCont", "ManagementStaticFilesCont", "ManagementMediaFilesCont", "ManagementMediaFilesBackupCont", "ManagementCommFilesCont", "ProcessingCommFilesCont", "SftpCont", "SftpBackupCont"]
  description = "Name of the individual containers for the private storage account"
}

variable "public_containers" {
  type        = list(string)
  default     = ["Scripts", "Data"]
  description = "Name of the individual containers for the public storage account"
}

variable "region" {
    default   = ""
    type      = string
}

variable "key_pair" {
    type      = string
    default   = ""
}

variable "source_security_group_ids" {
    type      = list(string)
    default   = [""]
}

variable "ng_ami_type" {
    type      = string
    default   = "AL2_x86_64"
}

variable "ng_disk_size" {
    type      = number
    default   = 20
}

variable "ng_instance_types" {
    type      = list(string)
    default   = ["t3.medium"]
}

variable "cluster_log_retention_in_days" {
  default     = 90
  type        = number
}

variable "cluster_name" {
  type        = string
  default     = "EKS_TEST"
}

variable "cluster_version" {
  type        = string
  default     = "1.15"
}

variable "subnets" {
  type        = list(string)
  default     = [""]
}

variable "enabled_cluster_log_types" {
    type      = list(string)
    default   = ["api","audit","authenticator","controllerManager","scheduler"]
}

variable "tags" {
  type        = map(string)
  default     = {"Name" : "EKS-TEST"}
}

variable "vpc_id" {
  type        = string
  default     = ""
}

variable "ng_desired_size" {
    type      = number
    default   = 1
}

variable "ng_max_size" {
    type      = number
    default   = 1
}

variable "ng_min_size" {
    type      = number
    default   = 1
}

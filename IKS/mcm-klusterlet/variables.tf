variable "cluster_name" {
  description = "Name of the IKS cluster"
}

variable "cluster_config" {
  description = "kubectl configuration text, Base64 encoded"
}

variable "cluster_certificate_authority" {
  description = "Certificate for authenticating with IKS cluster"
}

variable "icp_url" {
  description = "URL for ICP Server hosting the MCM hub cluster"
}

variable "icp_admin_user" {
  description = "Username for connecting to the ICP server"
}

variable "icp_admin_password" {
  description = "Password for connecting to the ICP server"
}

variable "mcm_hub_endpoint" {
  description = "API endpoint of MCM hub cluster"
}

variable "remove_or_delete" {
  description = "When deployment is destroyed, 'remove' or 'delete' kubernetes cluster from MCM hub-cluster"
}

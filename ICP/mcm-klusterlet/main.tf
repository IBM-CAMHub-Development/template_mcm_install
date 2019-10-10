locals {
  namespace = "${length(var.cluster_namespace) > 0 ? var.cluster_namespace : var.cluster_name}"
}

module "klusterlet" {
  source  = "git::https://github.com/IBM-CAMHub-Development/template_mcm_modules.git?ref=3.2.1//mcm_klusterlet"
  

  cluster_type  = "icp"

  ## Details for accessing the MCM hub-cluster
  icp_url             = "${var.icp_url}"
  icp_admin_user      = "${var.icp_admin_user}"
  icp_admin_password  = "${var.icp_admin_password}"
  
  ## Details for accessing and importing the target cluster
  cluster_name        = "${var.cluster_name}"
  cluster_namespace   = "${local.namespace}"
  cluster_endpoint    = "${var.cluster_endpoint}"
  cluster_user        = "${var.cluster_user}"
  cluster_token       = "${var.cluster_token}"

  ## If MCM image(s) are to be pulled from a private registry
  image_registry      = "${var.image_registry}"
  image_suffix        = "${var.image_suffix}"
  image_version       = "${var.image_version}"
  docker_user         = "${var.docker_user}"
  docker_password     = "${var.docker_password}"

  ## Access to optional bastion host
  bastion_host        = "${var.bastion_host}"
  bastion_user        = "${var.bastion_user}"
  bastion_private_key = "${var.bastion_private_key}"
  bastion_port        = "${var.bastion_port}"
  bastion_host_key    = "${var.bastion_host_key}"
  bastion_password    = "${var.bastion_password}"
}

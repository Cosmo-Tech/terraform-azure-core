module "create-privatedns" {
  source = "./create-privatedns"

  resource_group = local.resource_group
  vnet_id        = local.platform_vnet_id

  private_dns_name_blob     = var.private_dns_name_blob

  depends_on = [
    module.create-platform-prerequisite,
    module.create-network
  ]
}
data "azurerm_dns_zone" "dns_ronaldo" {
  name                = "ronaldo.net"
  resource_group_name = "az-ronaldo-dns-rg"
}

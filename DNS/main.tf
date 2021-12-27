resource "azurerm_dns_a_record" "teste" {
  name                = "teste"
  zone_name           = data.azurerm_dns_zone.dns_ronaldo.name
  resource_group_name = data.azurerm_dns_zone.dns_ronaldo.resource_group_name
  ttl                 = 14400
  records             = ["10.0.180.17"]
}
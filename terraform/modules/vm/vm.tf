resource "azurerm_network_interface" "" {
  name                = ""
  location            = ""
  resource_group_name = ""

  ip_configuration {
    name                          = "internal"
    subnet_id                     = ""
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = ""
  }
}

resource "azurerm_linux_virtual_machine" "" {
  name                = ""
  location            = ""
  resource_group_name = ""
  size                = "Standard_DS2_v2"
  admin_username      = ""
  network_interface_ids = []
  admin_ssh_key {
    username   = "honza"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC2TKylA+Kh+0Z9MhDZtl+cd8BNXofa4hRuiMdXwDgmxefgL35opxRTLYEUiNFa+UvdLKYORUKwLcMb2tHi3KlGBR8UIZEEq0GEgNMvORsZ0TSx4rgdvRCtuDvSZRaFmXCMV21joWy9fgMVeDFzRV+ZB7ee/kKo8jkAG4MQ+N9JET4RZyXkk3HjbQ9PhkMJaYoWtKJTXGWhaKTfQlvOYmNLNBsFFZjOtodn8eZ4UIKCz7X9aA44wSZM/Xu0XvBrOnfJ5iQH8dAbnR+J1nF/qQM5fObonq95vZO2jf4co303cIPPK9umz97qNHOF+IjR3z7bVrMuwgedlb0VhKZMk8osl/zvRYUx9G380UE0e9W9WSX/VI4zfLhQFYz1wmRjf5MFC2ofWsezdXGtmRYRU8moGEHna2bb/n6kmLhHzR69IbUBye/cITrnFrFctjlOd7qegcjkC8p7yCSa9S0QFcbhm5ydCxFAb4KWouhn2zvIOFpWktNTnhcIxas/FrHgnAM= odl_user@cc-c196b652-56bfb8d67-p8g7p"
  }
  os_disk {
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}

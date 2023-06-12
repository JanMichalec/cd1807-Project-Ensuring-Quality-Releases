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
  resource_group_name = "Azuredevops"
  size                = "Standard_DS2_v2"
  admin_username      = ""
  network_interface_ids = []
  admin_ssh_key {
    username   = "honza"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQChT/Au8nn7zb2RIg5bmqMEtVagUB5gbp1CTNFk7x6mgdqnSD/RfQu6F+QL7UBXLyjWtU7Bsg6Ut7bXad/Ec27PTU8hLaDLRLcTczHte5ge19NqsRH3g9yGDi+ze6c848XBQa5YEmu94qK0mG3jsQ8BC4+8TJlK+lc0tSYD8tCDzoex52MA3UBwiSVPXK4Xa+5NHjWj4+4DHbrfVxhm3DrxBwqL6ZMCwDy2lpMt9+WvizGrs5qDW5KYesojM6HG0eeV3aarnv5wL4iz2BKsU/LhRXnD1D/fAKh6pKuDmuualtx0kzBlVupa7ve/K6b6HBulzWymfMJMJT4RCU2rOn+l/eX7h6F86pPKkPF8AEES2n6PJb79GsOga2ft2wT+kEoR43Oh8X4fgRsPYiPZrw7QmgznBw/oKwRi0VR6QBS7YhFK13lnjduKV2FOxKi11HuBNRYE2WxF9WEpauSnJ7iPeQ+Pq14rv5+j84OSwC2/nv9TAAF7nrf5SardI3nSNX0= odl_user@cc-d0924d8b-64cc5b66dd-552s6"
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

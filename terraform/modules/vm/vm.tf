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
    username   = "adminuser"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1veNDCprv1C+OgBXV9evj0dzkfIbQQEcXyAcfLvsBOEn/1qnYm0Txcqx67izFHk4ywDP2QkMLTj8MmqOgCKDB+FS+JCVqxO/cNUOV5HBhPC/2mah15NyvMR7J7aVHc3pl2xViwqxBhe7zh40ER3rbtYmJjFHK8bKgA68/13atvdZbTWp1k74oNOYV9lwmCs1Z5tCLMaIw5AWJgb14RcCQlM1sRv1gNmU509Bz1lZmLAOLAmFIgJQVwFrxzfbKqCXtuG66+T7izMIuEKalZfvao1j8TWGmhwBPxZPx/TVQLU7rS6wL7zMTbjELHBUtKyDUvvYH7fG7H06ke6Qk+cxdYilNo2u/NLkgdkmySQBnHITqijiETUiqNnjWy2r239W2Mv8Jkb8gUc6HcIW0etChbfSNkYuYNnVpVNDwaVfjbXyZaxLMUGsGudOSOINbhQAyte2FW5XvsjGyDTKxVQa7Xxh4zSIPT4ThPugWCBvb5tnGtwn4zj/PDBXwi2AatSc= odl_user@cc-f958-79fb10eb-6d97b954c5-mflgw"
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

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
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDYCzjiCnf6rLv8uZ14ZeZI3naY3DOUheu4AQaOK+QT35zA5cCUxZr/hqTnWljmCFdNpEPY2vp06VIws6RwYRGQpzTX2JTHuucvK9CKHmnyNKUM2sZVRMLoSxuanxtLu+wIHKjVjY/CfxFsAIwjY57gTr09AJpEaNNFASImh1N+EgXzzNWFPY1LmT6I4+dToUUgthXBYYTmEB/Yt1PN+K/b1mkisiRJo96snHlEmXoAyGU1aLka/Y4nijIKQZWIrV/goHQWlEdF/EIDlUC/dJY0NgMNTeAMpDVp4lvS66loy7T/L0UhJAw+bgQZjQt8pMyzFAFRNBO4Wd8uDvjMsVVxrM5xCRvvywXivL56XlDwoWOLJz/FPiCcTnmwxQgjZ8id2s2Mc8wIP5ZfF3iyetysF+J4cEygzvpq/8FUrVb6W2g07Qa7/UWD2jS5eSqFPQHOgO91DTt18eGwaeTCjIzGZ5jqP4AEVhK29jm9jQY114g91lrzHgiopotYufxFn00= odl_user@cc-f958-1250f49a-7b64c74f8d-qvtnm"
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

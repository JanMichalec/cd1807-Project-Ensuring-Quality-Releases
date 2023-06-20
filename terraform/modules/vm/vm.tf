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
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDlCK3043oxQ4fWkE+IHb+AcMYTNw7jHxOW9FP36/29jOMw83hxqVh89j60R5gKcOD1rImdUgIfI/6UoKcSPiN9SS0o8HA+AILHXNAxN/U2sNMpLvEWItGuwRdgdnLXVcdwLrCdiWPBvGeMJxptUoN3Be7R1zVbgyVkvJrziLDDLFP56X/yFaAE8YyMWv2/8TGZThUWRtJ7qizDDjDBnvbs2l1GQwF4GVT7U2V9mqSYCWQig5XfeAL1J9u/DdvJePWgXvW5FLiFZ7vzQ6XHYDNLalcsJKrCFkQcPHRpSpZ268jKrKkKlpEXs/ORBEQEY7/LCoc2T3jkDjPGtlqxk/pC6eglkFtbK1eH32D2kHHeprcX1OqvKJI7/0ZzL6Uh8zdJ71dCLP5ygq/paHCkN2yWUEd1v9w5YFccHTjg7UDhRdWml3TwN8zUdrWpNliIKgqxcB3C5yAoaJ/C3zWEVjsN6M26PRt9YiUNTkoesVkCtvJVQAJH35tEwHP33DMcbXU= odl_user@cc-4b5f790a-6846b776d8-9xt28"
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

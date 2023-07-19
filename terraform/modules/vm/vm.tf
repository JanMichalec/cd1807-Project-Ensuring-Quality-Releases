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
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC7VGNNL5whsKmp3CDJ96ZzQPFwjo1XMylz0KpMlhphs/vuWq1565EYcOwR6zMarhty3nbAVeGnD5ULKelzhFjeYzrdCRTUOBTvfvJb1cyO5k7XN5IJyrpxkHXzoXE4KcY5Ke2JUnrxBXg1bL1xuliXpn1hGMC28922dTqRLuse9RiX/G0AYSnpZIpHcz246zXFD2IkXHgeEJn37cehkB0Fdkz8f7h/+k1bqt2T7GTRKCcgB3Izc8kySeTSkTWgx4TqlcCJy5bfDmeEzjMhyuFP7IFTnrEbx4VKpHyp3ArNwfhEhPi8uRdfBFs1H110UAesma1p6fFUfKysXcDm2XA3xHJmtVbIBTbdw/hluFdWI7F4XTQiO0GryaH3gljcdyMQVZ+hmMwc71Ggz0r9DXppRlNN8+FXzeO/rB5oi1rzUlAGqOrDSxv3jAUmMf4fhAxO1bTM+Bd3mb2qU7ciZd+7PWBI1DN0WlUPKKVStCDjiXHbG1ukCqRhjIueCGnrIh0= odl_user@cc-f958-f9bae4e1-6cdfb47bf5-mgv4b"
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

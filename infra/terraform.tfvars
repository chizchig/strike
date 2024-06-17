vpc_configs = {
  "vpc1" = {
    cidr_block       = "194.0.0.0/16"
    instance_tenancy = "default"
  }
    # "vpc2" = {
    #   cidr_block = "174.0.0.0/16"
    #   instance_tenancy = "default"
    # }
}

subnet_configs = {
  public = {
    name                            = "public-subnet"
    vpc_key                         = "vpc1"
    cidr_block                      = "192.0.1.0/24"
    enable_dns64                    = true
    map_public_ip_on_launch         = true
    assign_ipv6_address_on_creation = false
    tags = {
      Name = "pub_subnet"
    }
  }
  private = {
    name                            = "private-subnet"
    vpc_key                         = "vpc2"
    cidr_block                      = "192.1.2.0/24"
    enable_dns64                    = false
    map_public_ip_on_launch         = false
    assign_ipv6_address_on_creation = false
    tags = {
      Name = "priv_subnet"
    }
  }
}

vpc_id = {
  vpc1 = {}
  vpc2 = {}
}
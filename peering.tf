data "aws_vpc" "ansible-controller" {
  id = var.peer_vpc_id
}

data "aws_route_table" "ansible-routing-table" {
  route_table_id = var.peer_rt_id
}

resource "aws_vpc_peering_connection" "ansible-controller" {
  peer_vpc_id = data.aws_vpc.ansible-controller.id
  vpc_id      = aws_vpc.default.id
  auto_accept = true
  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }
}

resource "aws_route" "to-ansible-controller-vpc" {
  route_table_id            = aws_route_table.terraform-public.id
  destination_cidr_block    = "10.20.0.0/20"
  vpc_peering_connection_id = aws_vpc_peering_connection.ansible-controller.id
}

resource "aws_route" "from-ansible-controller-vpc" {
  route_table_id            = data.aws_route_table.ansible-routing-table.route_table_id
  destination_cidr_block    = "10.30.0.0/16"
  vpc_peering_connection_id = aws_vpc_peering_connection.ansible-controller.id
}


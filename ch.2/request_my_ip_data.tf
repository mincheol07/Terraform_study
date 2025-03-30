data "http" "my-ip" {
    url = "https://checkip.amazonaws.com/"
}

locals {
  my_cidr = "${chomp(data.http.my-ip.response_body)}/32"
}
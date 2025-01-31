terraform {
  required_version = ">= 0.15"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.15"
    }
  }
}

provider "docker" {
  host = "tcp://$IP_ADDRESS:2376" ## Remove this line if docker host is not remote otherwise enter the IP address. Further config might be required on [docker](https://docs.docker.com/config/daemon/).
}

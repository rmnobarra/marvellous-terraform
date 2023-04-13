terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "{{ container_name }}" {
  name         = {{ docker_image }}
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = {{ container_name }}
  ports {
    internal = {{ container_port }}
    external = {{ host_port }}
  }
}

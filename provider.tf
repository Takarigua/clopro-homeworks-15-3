terraform {
  required_version = ">= 1.3.0"

  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.160.0"
    }
  }
}

provider "yandex" {
  service_account_key_file = "${path.module}/key.json"
  folder_id = "b1glha5qkthfu5otp35p"
  zone      = "ru-central1-a"
}

provider "yandex" {
  alias = "storage"
  service_account_key_file = "${path.module}/key.json"
  folder_id = "b1glha5qkthfu5otp35p"
  zone      = "ru-central1-a"
}

resource "yandex_kms_symmetric_key" "key" {
  name              = "storage-key"
  description       = "Key for storage encryption"
  default_algorithm = "AES_256"
  rotation_period   = "8760h"
}

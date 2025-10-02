resource "yandex_storage_bucket" "website" {
  provider      = yandex.storage
  bucket        = "takarigua-website"
  force_destroy = true
  acl           = "public-read"  # старый синтаксис, но рабочий

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET", "HEAD", "PUT"]
    allowed_origins = ["*"]
    max_age_seconds = 3600
  }

  anonymous_access_flags {
    read        = true
    list        = true
    config_read = true
  }

  # HTTPS подключим через веб-интерфейс после активации сертификата
}

output "website_bucket_name" {
  value = yandex_storage_bucket.website.bucket
}

output "website_endpoint" {
  value = yandex_storage_bucket.website.website_endpoint
}

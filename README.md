# Домашнее задание к занятию «Безопасность в облачных провайдерах»  

Используя конфигурации, выполненные в рамках предыдущих домашних заданий, нужно добавить возможность шифрования бакета.

---
## Задание 1. Yandex Cloud   

1. С помощью ключа в KMS необходимо зашифровать содержимое бакета:

 - создать ключ в KMS;
 - с помощью ключа зашифровать содержимое бакета, созданного ранее.
2. (Выполняется не в Terraform)* Создать статический сайт в Object Storage c собственным публичным адресом и сделать доступным по HTTPS:

 - создать сертификат;
 - создать статическую страницу в Object Storage и применить сертификат HTTPS;
 - в качестве результата предоставить скриншот на страницу с сертификатом в заголовке (замочек).

Полезные документы:

- [Настройка HTTPS статичного сайта](https://cloud.yandex.ru/docs/storage/operations/hosting/certificate).
- [Object Storage bucket](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/storage_bucket).
- [KMS key](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/kms_symmetric_key).

--- 
## Ответ

Так понял судя по лекции в первом задании часть 2 со звездочкой (дополнительное). Пытался пробовать через регистрацию доменного имени бесплатного для теста на пару часов, но сыпало разные ошибки и не видело его, поэтому сделал первую часть только. 

Поднял ещё разок все с нуля, немного с конфигами игрался.
![ресы](https://github.com/Takarigua/clopro-homeworks-15-3/blob/f35a8a5a59f15f1b34ee5aee6063390270420ffb/screen/%D0%A0%D0%B5%D1%81%D1%8B.png)

---

Сделал kms и зашифровал, затем дешифровал и сравнивал.
![крипт](https://github.com/Takarigua/clopro-homeworks-15-3/blob/f35a8a5a59f15f1b34ee5aee6063390270420ffb/screen/%D0%BA%D1%80%D0%B8%D0%BF%D1%82.png)

---

![ключ](https://github.com/Takarigua/clopro-homeworks-15-3/blob/f35a8a5a59f15f1b34ee5aee6063390270420ffb/screen/%D0%9A%D0%BB%D1%8E%D1%87.png)

---

А это уже просто сайт по имени что выдал яндекс
![сайт](https://github.com/Takarigua/clopro-homeworks-15-3/blob/f35a8a5a59f15f1b34ee5aee6063390270420ffb/screen/%D0%A1%D0%B0%D0%B9%D1%82.png)

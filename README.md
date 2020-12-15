# airat-php-update
Скрипт для быстрого обновления PHP на сервере от Айрата Халитова

## Установка и запуск:
```bash
git clone https://github.com/AiratHalitov/airat-php-update

cd airat-php-update

sudo ./airat-php-update.sh
```

**Примечания:** 
- Проверь текущую версию PHP через `php -v` и установи ее в переменную PHPOLD
- Требуемую версию PHP нужно прописать в переменную PHPNEW
- Версия задается двумя цифрами через точку, например, 7.4 или 8.0
- В скрипте можно указать `apt purge` вместо `apt remove`, чтобы очистить настройки старой версии PHP

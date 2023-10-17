# laravel10-sanctum-spa-authentication-example

## Installation

edit .env. example:

```diff
@@ -11,7 +11,7 @@
 DB_CONNECTION=mysql
 DB_HOST=127.0.0.1
 DB_PORT=3306
-DB_DATABASE=laravel
+DB_DATABASE=/home/taro/src/laravel10-sanctum-spa-authentication-example/laravel
 DB_USERNAME=root
 DB_PASSWORD=
```

```bash
$ composer install
$ php artisan migrate:fresh --seed
```

## Usage

```bash
$ php artisan serve
```

hurl (https://hurl.dev/):

```bash
$ hurl getuser.hurl
{"id":1,"name":"Test User","email":"test@example.com","email_verified_at":"2023-09-21T03:13:21.000000Z","created_at":"2023-09-21T03:13:21.000000Z","updated_at":"2023-09-21T03:13:21.000000Z"}⏎
```

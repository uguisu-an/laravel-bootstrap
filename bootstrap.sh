#!/bin/bash

set -C

php artisan sail:install --with=mariadb,redis

npm install -D prettier @prettier/plugin-php

curl -s https://raw.githubusercontent.com/uguisu-an/laravel-bootstrap/main/resources/prettierrc.json > .prettierrc
curl -s https://raw.githubusercontent.com/uguisu-an/laravel-bootstrap/main/resources/prettierignore > .prettierignore

php -r "copy('https://readouble.com/laravel/8.x/ja/install-ja-lang-files.php', 'install-ja-lang.php');"
php -f install-ja-lang.php
php -r "unlink('install-ja-lang.php');"

curl -s https://raw.githubusercontent.com/uguisu-an/laravel-bootstrap/main/resources/lang/ja.json > resources/lang/ja.json

mkdir src
mkdir app/Services
mkdir app/Gateways

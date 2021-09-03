#!/bin/bash

php artisan sail:install --with=mariadb,redis,mailhog,selenium

npm install -D prettier @prettier/plugin-php

curl -s https://raw.githubusercontent.com/uguisu-an/laravel-bootstrap/main/resources/prettierrc.json >> .prettierrc
curl -s https://raw.githubusercontent.com/uguisu-an/laravel-bootstrap/main/resources/prettierignore >> .prettierignore

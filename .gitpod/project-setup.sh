#!/usr/bin/env bash

# Prepare vscode-xdebug setup
mkdir -p .vscode
cp .gitpod/templates/launch.json .vscode/.

# Install via composer
ddev composer install
ddev exec "cp .env.example .env"
ddev artisan key:generate

# TODO: setup laravel mix here as well, add browsersync https://github.com/tyler36/ddev-browsersync

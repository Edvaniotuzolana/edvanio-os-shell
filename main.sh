#!/bin/bash

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"

source "$BASE_DIR/utils.sh"
source "$BASE_DIR/auth.sh"
source "$BASE_DIR/menu.sh"

clear

echo "=============================="
echo "       EDVANIO OS SHELL"
echo "=============================="

login

if [ $? -eq 0 ]; then
    menu
else
    echo "Acesso negado."
fi

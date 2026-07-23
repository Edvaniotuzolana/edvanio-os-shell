#!/bin/bash

# Diretório principal do projeto
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"

# Carregar módulos do sistema
source "$BASE_DIR/utils.sh"
source "$BASE_DIR/backup.sh"
source "$BASE_DIR/restore.sh"

# Mostrar menu principal
while true
do
    clear

    echo "=============================="
    echo "     EDVANIO BACKUP SYSTEM"
    echo "=============================="

    echo "1 - Criar backup"
    echo "2 - Restaurar backup"
    echo "3 - Sair"

    read -p "Escolha: " opcao

    case $opcao in

        1)
            criar_backup
            ;;

        2)
            restaurar_backup
            ;;

        3)
            echo "Sistema encerrado."
            exit
            ;;

        *)
            echo "Opção inválida."
            ;;

    esac

    read -p "Pressione ENTER para continuar..."
done

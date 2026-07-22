#!/bin/bash

menu()
{
    while true
    do
        echo
        echo "========== MENU =========="
        echo "1 - Ver data"
        echo "2 - Ver utilizador"
        echo "3 - Sair"

        read -p "Escolha: " opcao

        case "$opcao" in
            1) date ;;
            2) whoami ;;
            3) exit 0 ;;
            *) echo "Opção inválida" ;;
        esac
    done
}

#!/bin/sh

# ==========================================
# utils.sh
# Funções utilitárias do sistema
# Autor: Edvânio Tuzolana
# ==========================================


LOG="data/sessao.log"


# Registar acontecimentos no sistema
registar()
{
    DATA=$(date '+%Y-%m-%d %H:%M:%S')

    echo "[$DATA] $1" >> "$LOG"
}


# Limpar terminal e mostrar cabeçalho

limpar()
{
    clear

    echo "===================================="
    echo "       EDVÂNIO OS SHELL"
    echo "       Sistema Linux Shell"
    echo "===================================="
}


# Pausa para leitura

pausar()
{
    echo ""
    read -p "Pressione ENTER para continuar..."
}

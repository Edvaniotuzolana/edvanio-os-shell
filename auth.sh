#!/bin/sh

# ==========================================
# auth.sh
# Sistema de autenticação
# ==========================================


USERS_FILE="data/usuarios.cfg"



# Verifica se utilizador existe

conta_existe()
{
    grep -q "^$1:" "$USERS_FILE"
}



# Criar conta

criar_conta()
{
    limpar

    echo "====== CRIAR CONTA ======"


    read -p "Utilizador: " USER

    if conta_existe "$USER"
    then
        echo "Utilizador já existe!"
        pausar
        return
    fi


    read -p "Password: " PASS


    echo "$USER:$PASS" >> "$USERS_FILE"


    echo "Conta criada com sucesso!"

    registar "Nova conta criada: $USER"


    pausar
}



# Login

login()
{

read -p "Utilizador: " USER

read -p "Password: " PASS


if grep -q "^$USER:$PASS$" "$USERS_FILE"
then

    UTILIZADOR="$USER"

    registar "Login realizado: $USER"

    return 0

else

    echo "Login inválido!"

    registar "Falha de login: $USER"

    return 1

fi

}

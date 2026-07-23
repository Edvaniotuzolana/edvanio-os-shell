#!/bin/bash


# Criar arquivo compactado de backup
criar_backup()
{

    mensagem "Iniciando backup..."


    # Pasta que será protegida
    ORIGEM="../data"


    # Nome usando data e hora
    DATA=$(date +"%Y-%m-%d_%H-%M-%S")


    # Nome final do backup
    ARQUIVO="../backups/backup_$DATA.tar.gz"


    # Criar arquivo comprimido
    tar -czf "$ARQUIVO" "$ORIGEM"


    # Registrar operação no log
    echo "$(date) Backup criado: $ARQUIVO" >> ../data/backup.log


    mensagem "Backup concluído."

}

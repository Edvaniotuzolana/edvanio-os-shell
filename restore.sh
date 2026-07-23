#!/bin/bash


# Restaurar último backup criado
restaurar_backup()
{

    mensagem "Procurando backup..."


    # Encontrar backup mais recente
    ARQUIVO=$(ls -t ../backups/*.tar.gz 2>/dev/null | head -1)


    # Verificar se existe backup
    if [ -z "$ARQUIVO" ]
    then

        echo "Nenhum backup encontrado."
        return

    fi


    # Extrair backup
    tar -xzf "$ARQUIVO"


    # Registrar restauração
    echo "$(date) Backup restaurado: $ARQUIVO" >> ../data/backup.log


    mensagem "Restauração concluída."

}

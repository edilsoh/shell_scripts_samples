#!/bin/sh

#Modo de uso: sh delete_old_files.sh $dias $caminho

limit_days=$1 #Define o tempo de retenção em dias.
DIR=$2 #Define a pasta onde os arquivos serão excluídos.
count=0

#Busca na pasta os arquivos pela data e excluí os resultados encontrados.
for X in $(/bin/find $DIR -type f -mtime +$limit_days); do
rm -f "$X"
count=$(($count+1))
done

echo "${count} arquivos com mais de ${limit_days} dias foram excluídos."

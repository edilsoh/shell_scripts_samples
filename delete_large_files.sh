#!/bin/sh

#Modo de uso: sh delete_large_files.sh $tamanho(ex. 500M) $caminho

size=$1 #Define o tamanho máximo dos arquivos.
DIR=$2 #Define a pasta onde os arquivos serão excluídos.
count=0

#Busca na pasta os arquivos pelo tamanho e excluí os resultados encontrados.
for X in $(/bin/find $DIR -size "+$size"); do
rm -f "$X"
count=$(($count+1))
done

echo "${count} arquivos com mais de ${size} foram excluídos."

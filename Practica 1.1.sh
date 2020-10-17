#!/bin/bash
#Script que escribe el còdigo de respuesta de una consulta al API en un
#archivo de nombre Respuesta
#EAGV_1796603 - Laboratorio Programacion para ciberseguridad

curl --request POST \
  --url 'https://www.virustotal.com/vtapi/v2/file/scan' \
  --form 'apikey=<por seguridad no lo pongo>' \
  --form 'file=@/home/doctor/Desktop/Scanner.sh' | grep -o "\"response_code\": [{,2}0-9]" > Respuesta


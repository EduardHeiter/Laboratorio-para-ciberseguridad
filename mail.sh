#!bin/bash

#Alumno: Eduardo Alonso Gaytan Valadez 
#Profesor: Jose Anastacio Hernandez
#Practica del 7 de nov de 2020
#Usando el script sendmail y configurando el fichero ssmtp.conf
#con el comando sudo nano /etc/ssmtp/ssmtp.conf de la sig manera:
#mailhub=smtp.office365.com:587
#UseSTARTTLS=YES
#FromLineOverride=YES
#AuthUser=eduardo.gaytanvdz@uanl.edu.mx
#AuthPass=·········
#Pudimos configurar un servidor smtp y asi enviar correos


while read line; do

	/usr/sbin/sendmail $line -vt < /home/doctor/Desktop/Mail.txt

done < /home/doctor/Desktop/correos.txt




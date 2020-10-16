#!/bin/bash
#EJECUTAR COMO SUDO
echo 'Instalador ZeroTier para Kali Linux\n'
read -p 'Ingrese una opción: 1.Compilar ZeroTier desde binarios. 2.Unirse a la VPN del equipo' op

if [ $op == 1 ]; 
then
	echo 'Clonando desde Github'
	sleep 3s
	eval 'git clone https://github.com/zerotier/ZeroTierOne.git'
	echo '--------OK---------'
	eval 'cd ZeroTierOne'
	echo 'Compilando ZeroTierOne'
	sleep 3s
	eval 'make'
	echo '--------OK---------'
	sleep 3s
	eval'sudo ./zerotier-cli -h'

elif [ $op == 2 ]; 
then
	echo 'Intentando conectar a af78bf9436afb91d'
	sleep 3s
	eval 'cd ZeroTierOne'
	eval './zerotier-cli join af78bf9436afb91d'

else
	echo 'Opcion no valida'
fi

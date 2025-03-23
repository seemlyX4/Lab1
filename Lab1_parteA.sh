#!/bin/bash

#Definir variables
Num_CPUs=$(nproc)
Ram_disp=$(free -h |awk '$1 == "Mem:" {print $7}')  #busca la fila "Mem:" en la primera colunma y muestra el septimo campo
Esp_Libre=$(df -h | awk '$1 == "/dev/sda2" {print $4}')
Ver_Kernel=$(uname -r) #kernel release
Tiemp_Activo=$(uptime -p)   #-p para que muestre en tiempo en forma de cronometro
Inf_Sistema=$(lsb_release -d | cut -f2-) 
Nom_Host_Sist=$(hostname)
Mem_swap_uso=$(free -h | awk '$1 =="Swap:" {print $3}')

#Mostrar en terminal
echo "Numero de CPUs: $Num_CPUs"
echo "Memoria RAM disponible: $Ram_disp"
echo "Espacio libre en disco: $Esp_Libre"
echo "Version del kernel de Linux: $Ver_Kernel"
echo "Tiempo de actividad del sistema: $Tiemp_Activo"
echo "Distribucion y version del sistema: $Inf_Sistema"
echo "Nombre del host: $Nom_Host_Sist"
echo "Memoria swap en uso: $Mem_swap_uso"













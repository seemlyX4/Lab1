#!/bin/bash

#extraer el archivo
unzip -o logs.zip

#definir variables
max_errors=0
fecha_max=""

#leer cada archivo
for file in "logs"/*; do
	#Extraer la fecha
	fecha=$(basename "$file" .log | cut -d"_" -f2-)
	
	#contar errores y warnings
	errors=$(grep -c "ERROR" "$file")
	warnings=$(grep -c "WARNING" "$file")
	
	#reporte
	echo "Fecha: $fecha "
	echo "Errores: $errors"
       	echo "Warnings: $warnings"
	echo "-------------------"
	
	#dia con mas errores
	if ((errors > max_errors)); then
		max_errores=$errors
		fecha_max=$fecha
	fi

done

echo "Dia con las errores: $fecha_max"

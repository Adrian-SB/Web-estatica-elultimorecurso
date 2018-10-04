#! \bin\bash

#Geración de página web
pelican content/ -s pelicanconf.py -t content/chunk/ 2>/dev/null
echo
echo "Página web generada"
echo "-------------------------------"
echo "Datos para el despliegue con surge"
echo "e-mail: asboceta@gmil.com"
echo "domain: elultimorecurso.surge.sh"
# Despliegue automático de la página
cd output
surge -d elultimorecurso.surge.sh -p ../output/
echo "-------------------------------"
echo "Actualización finalizada."
cd ..
echo


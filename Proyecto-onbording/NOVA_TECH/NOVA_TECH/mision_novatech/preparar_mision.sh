#!/bin/bash
# Prepara el escenario de la mision "Rescate en NovaTech"
BASE="$HOME/novatech"
if [ -e "$BASE" ]; then
  echo "Ya existe la carpeta novatech en tu carpeta personal. Renombrala o pide ayuda al facilitador."
  exit 1
fi

mkdir -p "$BASE"
cd "$BASE" || exit 1

cat > LEEME.txt << 'EOF'
URGENTE - NovaTech

El desarrollador anterior renuncio sin avisar y dejo el servidor hecho un desastre.
Un cliente espera su sitio web y nadie sabe quien es ni que pidio.

Antes de irse, el desarrollador escondio pistas. La primera esta en servidor_viejo,
pero no la vas a ver a simple vista.

Lleva todo lo que descubras en un archivo llamado bitacora.txt dentro de novatech.
EOF

# ---------- servidor_viejo: archivos mezclados ----------
mkdir -p servidor_viejo/copia_vieja
cd servidor_viejo
touch index.html contacto.html nosotros.html
touch estilos.css reset.css
touch app_final_v2.js carrito.js
touch logo.png banner_FINAL_v3.jpg producto1.jpg producto2.jpg
touch jingle.mp3
touch manual.pdf contrato.pdf
touch cache_01.tmp cache_02.tmp cache_03.tmp cache_04.tmp cache_05.tmp
echo "ERROR 500 - servidor caido" > error.log
echo "GET /index.html 200" > acceso.log
touch copia_vieja/index_2019.html copia_vieja/estilos_viejos.css
echo "Recordatorio: el cliente queria algo con cafe... o era te?" > notas_dev.txt
echo "Bien hecho. La siguiente pista esta en archivo_muerto, dentro del anio mas reciente. Tambien esta oculta." > .pista1.txt
cd ..

# ---------- archivo_muerto: carpetas por anio ----------
mkdir -p archivo_muerto/{2019,2020,2021,2022}
echo "Nada importante." > archivo_muerto/2019/resumen.txt
echo "Facturas viejas." > archivo_muerto/2020/facturas.txt
echo "Pista falsa: aqui no hay nada." > archivo_muerto/2021/.pista_falsa.txt
echo "Proyecto cancelado." > archivo_muerto/2022/cancelado.txt
echo "Vas bien. Revisa correo/bandeja. El mensaje que importa es el mas pesado (ls -l te lo dice)." > archivo_muerto/2022/.pista2.txt

# ---------- correo: muchos mensajes ----------
mkdir -p correo/bandeja
for i in 01 02 03 04 05 06 08 09 10; do
  echo "Mensaje $i: publicidad, ignorar." > correo/bandeja/mensaje_0$i.txt
done
{
  echo "Hola, soy la duena de la cafeteria. Te escribo los detalles del pedido."
  for n in $(seq 1 60); do echo "..."; done
  echo "CLIENTE: Cafe Montana"
  echo "La carpeta del proyecto debe llamarse: cafe-montana"
  echo "Paginas: index.html en la raiz; contacto, nosotros y una nueva pagina menu.html dentro de pages"
  echo "Estilos en css, scripts en js, imagenes en assets/img, audio en assets/audio, PDFs en docs"
  echo "El script principal debe llamarse app.js y el banner debe llamarse banner.jpg"
  echo "Nada de archivos .tmp ni .log en mi proyecto"
  echo "Quiero un README.md con el nombre del equipo y un .gitignore"
  echo "Palabra clave para confirmar que leiste todo: ESPRESSO"
} > correo/bandeja/mensaje_007.txt

echo "Escenario listo. Entra con: cd ~/novatech  y lee LEEME.txt"

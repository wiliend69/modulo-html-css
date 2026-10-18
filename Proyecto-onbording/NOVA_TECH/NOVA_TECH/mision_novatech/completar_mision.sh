#!/bin/bash
# Equipo Sonnet - completa las misiones 1 a 5 de "Rescate en NovaTech".
# Requiere que ~/novatech exista (creada por preparar_mision.sh o por el .zip).
EQUIPO="Sonnet"
CLIENTE="Café Montaña"
N="$HOME/novatech"

[ -d "$N/servidor_viejo" ] || { echo "No encuentro $N/servidor_viejo. Primero crea el escenario."; exit 1; }
[ -e "$N/bitacora.txt" ] && { echo "Ya existe bitacora.txt: este script ya se ejecuto. No lo repitas."; exit 1; }
cd "$N" || exit 1

# ---------- Misión 1: reconocimiento (se mide ANTES de mover nada) ----------
carpetas=$(find . -mindepth 1 -maxdepth 1 -type d | wc -l)
tmps=$(ls servidor_viejo/*.tmp | wc -l)
notas=$(cat servidor_viejo/notas_dev.txt)

echo "Equipo $EQUIPO: Danilo Tangarife, Wilmer Camargo, Emanuel Silva" >> bitacora.txt
echo "Mision 1 - Ruta absoluta de novatech: $N" >> bitacora.txt
echo "Mision 1 - Carpetas directamente dentro de novatech: $carpetas" >> bitacora.txt
echo "Mision 1 - Archivos .tmp en servidor_viejo: $tmps" >> bitacora.txt
echo "Mision 1 - notas_dev.txt dice: $notas" >> bitacora.txt

# ---------- Misión 2: pistas ----------
echo "Mision 2 - Cadena de pistas: servidor_viejo/.pista1.txt -> archivo_muerto/2022/.pista2.txt -> correo/bandeja/mensaje_007.txt (la pista falsa estaba en archivo_muerto/2021)" >> bitacora.txt
echo "Mision 2 - Cliente: $CLIENTE" >> bitacora.txt
echo "Mision 2 - Ruta absoluta del pedido: $N/correo/bandeja/mensaje_007.txt" >> bitacora.txt
echo "Mision 2 - Palabra clave: ESPRESSO" >> bitacora.txt
echo "Mision 2 - Requisitos: proyecto cafe-montana; index.html en la raiz; contacto, nosotros y menu.html (nueva) en pages; estilos en css; scripts en js (app_final_v2.js pasa a app.js); imagenes en assets/img (banner_FINAL_v3.jpg pasa a banner.jpg); audio en assets/audio; PDFs en docs; sin .tmp ni .log; README.md y .gitignore" >> bitacora.txt

# ---------- Misión 3: respaldo ----------
cp -r servidor_viejo respaldo_servidor
echo "Mision 3 - Respaldo hecho con cp -r. La carpeta necesita -r (recursivo) porque sin esa opcion cp omite las carpetas y no copia nada; con -r copia todo el contenido, subcarpetas y archivos ocultos como .pista1.txt." >> bitacora.txt

# ---------- Misión 4: construir el proyecto ----------
mkdir -p cafe-montana/{pages,css,js,assets/img,assets/audio,docs}
cd servidor_viejo || exit 1
mv index.html ../cafe-montana/
mv contacto.html nosotros.html ../cafe-montana/pages/
mv estilos.css reset.css ../cafe-montana/css/
mv app_final_v2.js ../cafe-montana/js/app.js
mv carrito.js ../cafe-montana/js/
mv logo.png producto1.jpg producto2.jpg ../cafe-montana/assets/img/
mv banner_FINAL_v3.jpg ../cafe-montana/assets/img/banner.jpg
mv jingle.mp3 ../cafe-montana/assets/audio/
mv manual.pdf contrato.pdf ../cafe-montana/docs/
cd ..
echo "<html><body><h1>Menu - $CLIENTE</h1></body></html>" > cafe-montana/pages/menu.html

# ---------- Misión 5: limpieza y entrega ----------
rm servidor_viejo/*.tmp servidor_viejo/*.log
rm -r servidor_viejo/copia_vieja
rm -r servidor_viejo   # solo quedaban notas y pistas (ya respaldadas)

cat > cafe-montana/README.md <<EOF
# Proyecto $CLIENTE
Equipo: $EQUIPO
Cliente: $CLIENTE
Integrantes:
- Danilo Tangarife
- Wilmer Camargo
- Emanuel Silva
EOF
printf '%s\n' '*.tmp' '*.log' > cafe-montana/.gitignore
echo "Mision 5 - Limpieza hecha, README.md y .gitignore creados. Entrega lista." >> bitacora.txt

echo "Misiones 1 a 5 completadas. Ejecuta: bash ~/verificar.sh"

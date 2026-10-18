#!/bin/bash
# Revisa la entrega de la mision "Rescate en NovaTech"
BASE="$HOME/novatech"
cd "$BASE" 2>/dev/null || { echo "No encuentro la carpeta novatech en tu carpeta personal."; exit 1; }
C=cafe-montana
P=0; T=0
check() {
  T=$((T+1))
  if eval "$2" 2>/dev/null; then echo "  [OK] $1"; P=$((P+1)); else echo "  [--] $1"; fi
}

echo "Revision de la mision NovaTech"
check "Respaldo completo (incluye archivos ocultos)" "[ -f respaldo_servidor/index.html ] && [ -f respaldo_servidor/.pista1.txt ]"
check "servidor_viejo ya no existe" "[ ! -e servidor_viejo ]"
check "index.html en la raiz del proyecto" "[ -f $C/index.html ]"
check "pages con contacto, nosotros y menu" "[ -f $C/pages/contacto.html ] && [ -f $C/pages/nosotros.html ] && [ -f $C/pages/menu.html ]"
check "css con estilos y reset" "[ -f $C/css/estilos.css ] && [ -f $C/css/reset.css ]"
check "js con app.js y carrito.js" "[ -f $C/js/app.js ] && [ -f $C/js/carrito.js ] && [ ! -e $C/js/app_final_v2.js ]"
check "assets/img con las 4 imagenes" "[ -f $C/assets/img/logo.png ] && [ -f $C/assets/img/banner.jpg ] && [ -f $C/assets/img/producto1.jpg ] && [ -f $C/assets/img/producto2.jpg ]"
check "assets/audio con jingle.mp3" "[ -f $C/assets/audio/jingle.mp3 ]"
check "docs con manual y contrato" "[ -f $C/docs/manual.pdf ] && [ -f $C/docs/contrato.pdf ]"
check "README.md con contenido" "[ -s $C/README.md ]"
check ".gitignore creado" "[ -e $C/.gitignore ]"
check "Sin archivos .tmp ni .log en el proyecto" "[ -d $C ] && [ -z \"\$(find $C -name '*.tmp' -o -name '*.log')\" ]"
check "Bitacora con la palabra clave" "grep -qi espresso bitacora.txt"
check "Bitacora con al menos 6 lineas" "[ \$(wc -l < bitacora.txt) -ge 6 ]"

echo ""
echo "Resultado: $P de $T puntos"
[ "$P" -eq "$T" ] && echo "Mision cumplida. Llama al facilitador."

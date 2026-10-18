#!/bin/bash
# Equipo Sonnet - Misión 6: construye el reto "reto_sonnet" en la carpeta personal.
R="$HOME/reto_sonnet"
[ -e "$R" ] && { echo "Ya existe $R. No lo repitas."; exit 1; }

# Niveles: reto_sonnet/puerta/sala/biblioteca/sotano  (4 niveles)
mkdir -p "$R/puerta/sala/biblioteca/sotano" "$R/puerta/sala/tesoro"

# Pista 1 (visible)
echo "PISTA 1: Bienvenido al reto del equipo Sonnet. Entra a la carpeta puerta y busca un archivo oculto (ls -a)." > "$R/INICIO.txt"

# Pista 2 (oculta)
echo "PISTA 2: Bien. Avanza hasta puerta/sala/biblioteca. Solo uno de los libros dice la verdad: el que empieza con 'verdad'." > "$R/puerta/.llave_1.txt"

# Pista falsa 1 (oculta, en sala)
echo "PISTA: El tesoro esta en la azotea. (Mentira, no pierdas tiempo.)" > "$R/puerta/sala/.nota_falsa.txt"

# Biblioteca: un libro falso y uno verdadero
echo "PISTA: El tesoro esta en la cocina. (Falsa: este libro miente.)" > "$R/puerta/sala/biblioteca/libro_mentiroso.txt"
# Pista 3
echo "PISTA 3: Este libro dice la verdad. Baja a la carpeta sotano y busca otro archivo oculto." > "$R/puerta/sala/biblioteca/verdad_libro.txt"

# Pista 4 (oculta)
echo "PISTA 4: El mensaje importante esta al FINAL del archivo mas largo de esta carpeta. Usa ls -l para encontrarlo y tail para leer el final." > "$R/puerta/sala/biblioteca/sotano/.llave_2.txt"

# Pista falsa 2 (visible en sotano)
echo "PISTA: Busca en el jardin. (Falsa.)" > "$R/puerta/sala/biblioteca/sotano/pista_falsa.txt"
echo "Nota corta, sin importancia." > "$R/puerta/sala/biblioteca/sotano/nota_corta.txt"

# Archivo largo con el mensaje al final
for i in $(seq 1 300); do
  echo "Linea $i del diario del sotano: nada relevante por aqui." >> "$R/puerta/sala/biblioteca/sotano/diario_largo.txt"
done
echo "MENSAJE IMPORTANTE: El tesoro esta en puerta/sala/tesoro/cofre.txt" >> "$R/puerta/sala/biblioteca/sotano/diario_largo.txt"

# Tesoro final
echo "FELICITACIONES. La palabra clave es: SONETO7. Escribela en resuelto.txt (en la raiz del reto) junto con el nombre de tu equipo." > "$R/puerta/sala/tesoro/cofre.txt"

echo "Reto creado en $R. Empieza con: cat $R/INICIO.txt"

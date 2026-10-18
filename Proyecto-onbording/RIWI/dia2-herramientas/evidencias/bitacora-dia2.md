# Bitácora · Día 2 · Herramientas de desarrollo

- **Coder:*Wilmer Andrey Camargo*
- **Fecha:*oct 14 2026*
- **TL:*johan*

---

## 1. Mi entorno de desarrollo (Etapa 1)

- Versión de Ubuntu: 26.04.1 LTS
- Versión de Python: 3.14.4
- ¿Dónde está instalado Python? (resultado de `which python3`): /usr/bin/python3
- Con mis palabras, la diferencia entre un compilador y un intérprete es:lo que entiendo por copilador es un archivo que se ejecuta antes de ejecutarlo, mientras que el interprete lee por secuencia de codigo cada linea y no crea un ejecutable 

- ¿Qué pasó con la línea 4 de `hola.py` y por qué?: lo que entiendo que paso en la linea 4 fue que como mensaje secreto no esta guardado entre comillas esto no lo tomo y como es un interprete al leer la secuencia vio que estaba incorrecto

| Herramienta | ¿Qué es? (sistema operativo, editor, intérprete, compilador o navegador) |
|---|---|
| Ubuntu | sistema operativo |
| VS Code | Editor|
| Python | interprete|
| Chrome |  navegador|
| gcc | copilador|

## 2. Reinstalación de VS Code (Etapa 2)

- ¿Cómo estaba instalado VS Code? (snap, .deb o no estaba):Yo instale VS Code por medio de .deb el comando que utilice para instalarlo fue sudo apt install ./code_*.deb
- Comando que usé para desinstalarlo:para desistalarlo hice sudo snap remove code
- Comando que usé para instalarlo: sudo apt install ./code_*.deb
- ¿Por qué es importante instalar desde la fuente oficial?: la importancia de instalar de una fuente oficial es no descargar algun virus o un archivos que se haga pasar por el oficial
- ¿Qué pasó con mi configuración al desinstalar? ¿Dónde vive?: al desistalar no paso nada con mi configuracion ya que se queda guardado  y se queda guardado aca ls ~/.config/Code
ls ~/.vscode


## 3. Perfiles y extensiones (Etapa 3)

- Con mis palabras, un perfil de VS Code es: para mi un perfil es como una partida guarda en un juego donde yo puedo guarda diferentes con diferentes items y mejoras, mientras que en el otro perfil o la otra partida guarda puedo dejarlo sin items o sin nada 
- ¿Qué cambia en el Explorador entre un perfil y otro?: cambiar de un perfil a otro cambia la manera en como manejamos los las configuracion o las extensiones de cada perfil esto adaptandose a nuestro gusto
- ¿Por qué VS Code pregunta si confío en el publicador de una extensión?: VS Code pregunta esto mas que todo para curarse en salud, esto con el sentido de que tu como usuario fuiste el que abrio la puerta a esa extensio o ese archivo que vas abrir dentro de tu proyecto o de tu IDE 

## 4. Duelo de perfiles (Etapa 4)

| Prueba | Perfil2-Basico | Perfil1-Pro |
|---|---|---|
| 1. Auto guardado | |x|
| 2. Auto Rename Tag | | |
| 3. Error Lens |x|x|
| 4. Íconos | |x|
| 5. Guías de indentación |x|x|
| 6. Extensiones corriendo ||x|

**Reflexión**

1. ¿Noté diferencias en la experiencia de trabajo entre los dos perfiles? ¿Cuáles?
   - una de las diferencias en la expericia de trabajo es el autoguardado que tiene el perfil pro y ademas la personalizacion de este mismo, mientras que el perfil basico tiene herramientas basicas y al no tener autoguardado facilida que no guarde de manera automatica sino que uno revise de manera manual
2. ¿Qué ventajas tiene usar múltiples perfiles en VS Code?
   - es que uno puedo tener un perfil para trabajar de manera mas comoda como con los iconos y el autoguardado, pero al tener otro perfil que no tenga autoguardado uno nota mas la veracidad de la productividad
3. ¿Cómo influyen las extensiones en la productividad y en el rendimiento del editor?
   - las extensiones ayudan a mirar mas comodamente los iconos y ademas herramientas que ayuden a buscar errores de manera automatica
4. ¿Cuándo sería útil usar perfiles distintos en un entorno profesional? (dos ejemplos)
   - al tener dos perfil en un entorno laborar lo veo como como trabajar con github, ya que un perfil puede ser la rama principal, mientras que otro perfil uno puedo ir probando cosas sin afectar al codigo principal

## 5. Inspección y modificación (Etapa 5)

- Página que usé: https://es.wikipedia.org/wiki/Medell%C3%ADn
- Cinco etiquetas que encontré y para qué sirven:
  1.div entiendo que es para modificar un bloque o trabajar en el
  2.button es para modificar el nombre del boton que vaya a poner 
  3.span lo utilice para cambiar el nombre de un contenedor 
  4.img para cambiar la imagen
  5.nav para agregar texto en una lista
- ¿Qué pasó con mis cambios al recargar y por qué?: cuando recarge mi pagina se reconfiguro a su estado natural
- Con mis palabras, el DOM es:para mi DOM funciona como una estructura de un arbol o un nodo el cual tiene una cabeza y va bajando ramas que componen este arbol o nodo

## 6. La consola (Etapa 6)

| Operación | Mi predicción | Resultado real |
|---|---|---|
| `2 + 3` |5|5|
| `10 - 4 * 2` |2|2|
| `(10 - 4) * 2` |12|12|
| `10 / 4` |2.5|
| `10 % 3` |1| |
| `2 ** 8` |256|
| `120000 * 0.19` |22800|
| `365 * 24` |8760

- ¿Por qué `0.1 + 0.2` no da exactamente `0.3`?: no da exactamente 0.3 ya que el lenguje maquina toma el resultado de manera binaria y no muestra el valor exato sino demas decimales
- Errores o advertencias que encontré en la página (o "ninguno"): en este caso la pagina no me mostro ningun error
- Diferencia entre un error y una advertencia:un error es algo que no se pudo ejecutar dentro de programa y mientras que warning es que hay algo desactualizado pero sigue funcionando el programa

## 7. La red / Network (Etapa 7)

| Imagen | Formato | Tamaño | Tiempo | Código de estado |
|---|---|---|---|---|
|commonswiki.svg|svg|632b|0 ms|200 OK
|commons.ico|image/vnd.microsoft.icon| 3.87 KB| 0 ms | 200 ok
| commons.png| image/png|4.03 KB|0 ms| 200 OK

| Experimento | Solicitudes | Transferido | Load |
|---|---|---|---|
| A. Sin caché |35 requests|3.01 MB / 1.20 MB transferred|1.36 s
| B. Con caché |33 requests| 3 MB |152.93 kB transferred|1.23 s
| C. Red lenta | 29 requests|2.58 MB / 37.40 kB transferred|9.97 s

- Archivo más pesado de la página y su tipo: El archivo mas pesado es un script tipo jason con un peso de 608.08 kb y tu tipo es text/javascript; charset=utf-8
- ¿Por qué la página cargó más rápido con caché?: al tener cache carga mas rapido ya que guarda un pedazo de la pagina para que cargara mas rapido
- ¿Por qué un desarrollador querría probar con una red lenta?: para saber el rendimineto de la pagina con todo cargado y ademas saber que se pierde al tener menor conexion
- ¿Qué haría para que una imagen pesada cargue más rápido?: algo que yo haria es comprimir la imagen

## 8. Dispositivos móviles (Etapa 8)

| Ancho (px) | Dispositivo | ¿Cambia el menú? | ¿Imágenes bien? | ¿Scroll horizontal? | Observación |
|---|---|---|---|---|---|
| 320 | galaxi note 9| no|si|si| las imagenes como los textos y los iconos se adapadan
| 375 | galaxi s25| no| si|si| se modifica correctamente y se adapta
| 768 |galaxi s25 ultra|no|si|si| se ve correctamente
| 1024 |pixel 7| si| si| si| se amplia la imagen y asi mismo las letras
| 1440 | tab 9| si | si| si | se amplia la imagen y todo pero se ve bien 

- ¿Por qué es importante probar varias resoluciones antes de entregar un proyecto?:

## 9. Laboratorio de errores (Etapa 9)

| # | Tipo | ¿Dónde lo detecté? | Mensaje o síntoma | Causa | Solución aplicada |
|---|---|---|---|---|---|
| 1 | typeError| se detecto en JS en la linea 15| no podia aceder a la propiedad del boton|el boton no estaba correctamente llamado en el javaScript y por eso no podia tomar  | cambiarle el nombre al bton, por que anteriormente se llamaba #btn y esta variable no existia, sino que era #boton|


- Uno de los errores, descrito con detalle, y cómo lo resolví: el unico error que me aparecio fue el typeError sobre la funcion addEventListener ya que el boton esta vacio por que el boton se llamaba btn-saludar y se llamba boton en el html
- ¿Qué vi al pausar con el breakpoint?: al pausar el breakpoint se pauso los eventos de JS
- ¿Qué pasó al cambiar `visitas` por 99 y al borrarlo?: al cambiar visitas por 99 no cargaba el contador y al borar visita tampoco funciona el contador, se queda en el ultimo visita que se hizo antes de cambiarlo
- ¿Para qué usan el localStorage las páginas reales? ¿Qué NO debería guardar ahí?: lo que entiendo localstorage es para ver los datos que se guardan de manera local en este caso las visitas, pero en las paginas reales seria guardar cache para que cargue mas rapido cuando entremos nuevamente, los datos que no deberian estar guardado son datos importantes como id o contraseña
- Ancho exacto en el que se apilan las tarjetas y regla de CSS responsable:900px 
- ¿Por qué no basta con mirar solo la consola para encontrar errores?: ya que solo con mirar la consola solo de da un error mas no de dice que esta pasando, ya que aunque decia que error estaba en la linea 15 y que era por el evento, en si el error se encontraba en el llamado de boton del html

## 10. Comparación con Firefox (Etapa 10)

| Herramienta | Chrome: nombre y atajo | Firefox: nombre y atajo | Diferencia que noté |
|---|---|---|---|
| Inspeccionar HTML y CSS | Pestaña Elements; selector con Ctrl+Shift+C| Pestaña Inspector (Inspeccionar); selector con Ctrl+Shift+C| Hacen lo mismo (editar texto, colores y estilos en vivo). Firefox separa los paneles Reglas, Diseño, Fuentes y Cambios, y Chrome los junta en Styles y Computed|
| Consola | 	Pestaña Console; Ctrl+Shift+J| Pestaña Consola; Ctrl+Shift+K| Las dos ejecutan JS y muestran logs, warnings y errores. Firefox tiene filtros arriba (Errors, Warnings, Info, Logs, Debug) y modo multilínea con Ctrl+B|
| Red | 	Pestaña Network; se abre con F12 / Ctrl+Shift+I y se elige la pestaña| Pestaña Red (Network); Ctrl+Shift+E| 	Firefox tiene atajo propio para Red. En ambas se ve tamaño, tiempo y estado (200 OK) de cada recurso, y se puede desactivar la caché y limitar la velocidad|
| Simulación de dispositivos | Device Toolbar (Modo dispositivo); Ctrl+Shift+M| Modo de diseño adaptable (Responsive Design Mode); Ctrl+Shift+M| Mismo atajo. Chrome trae lista larga de dispositivos (Galaxy S25, Pixel 7...) y Firefox permite además simular toque y rotar la pantalla|
| Almacenamiento local | Pestaña Application → Local Storage → http://localhost:8000| estaña Almacenamiento (Storage) → Almacenamiento local → http://localhost:8000| Solo cambia el nombre y la ubicación de la pestaña. En ambos encontré la clave visitas y se puede editar o borrar|
| Mensaje del error que reintroduje | Uncaught TypeError: Cannot read properties of null (reading 'addEventListener')| Uncaught TypeError: can't access property "addEventListener", boton is null| Dicen lo mismo (el botón es null y no existe en el HTML) pero redactado distinto. Firefox me pareció más claro porque dice el nombre de la variable (boton), Chrome solo dice "of null". Ambos señalan app.js línea 15|

- Una característica de Firefox interesante o diferente a Chrome (qué es, para qué sirve y cómo la probé): algo que vi interesando al utilizar la caracteristica de firefox es que en el editor de estilos puedo editar por completo el estilo del css y esto antes de ir al vs, y al recarga vuelve sola en si, esto me gusto por que puedo ver como se hizo las paginas y modificarlas sin pasar por VS Code

## 11. Reflexión final (Etapa 11)

- La herramienta que más voy a usar y por qué: la herramienta que mas voy a usar seria la consola ya que esta da una posibilidad de probar codigo y con el inspector puedo ver las linea de erros y asi ver las cosas de JS
- Lo más difícil del día y cómo lo resolví: siento que lo mas dificil fue las linea de errores ya que aunque en la terminal dijera algo no significa que ahi estaba el error ya que tocaba comparar en todo el codigo no solo JS sino tambien el HTML, esto lo resolvi comparando el id del boton que estaba en HTML y en JS corrigiendo el nombre y ya esta todo listo
- Las DevTools explicadas para alguien que no programa (3 líneas):dev tools es como ver los organos y los nervios de un cuerpo humano es como destripar un la pagina y ver como esta hecha y como se construyo
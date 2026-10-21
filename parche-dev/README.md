# Parche Dev 2026

Sitio oficial del encuentro Parche Dev 2026, construido solo con HTML semántico.
Reto individual del Módulo 1 · HTML y CSS, RIWI.

Sitio publicado: https://github.com/wiliend69/trayecto1/tree/main/parche-dev

## Páginas

- Inicio
- Agenda
- Ponentes
- Inscripción y confirmación
- Código de conducta

## Cómo verlo en tu computador

1. Clona el repositorio.
2. Ábrelo en VS Code.
3. Abre index.html con Live Preview.

## Decisiones que tomé

- ```<table>``` para la agenda, no una lista ni divs. La agenda es información con dos dimensiones (hora × sala), así que es una tabla de verdad. 
- Usé ```<caption>```,``` <th scope="col"```> y rowspan para el taller de Python, que dura dos franjas.
radio, checkbox y select según el tipo de respuesta. “¿En qué momento estás?” es radio con required porque solo se puede elegir una opción. Los temas de interés son checkbox porque se pueden elegir varios. Ciudad y talla son select porque son listas cerradas y largas, y mostrar 11 radios habría saturado el formulario.
- type="email" y type="tel" con ```pattern="3[0-9]{9}"```, no type="text". El navegador valida el formato y en el celular abre el teclado adecuado. El pattern cubre la regla “10 dígitos, empieza por 3”.
-  ```<label for```> en cada campo y ```<fieldset>/<legend>``` para los grupos. El label hace que al tocar el texto se active el campo, y los lectores de pantalla anuncian la pregunta. El fieldset agrupa las opciones de un mismo grupo para que se lean juntas.
- ```<article>``` para cada ponente y ```<section>``` para el resto. Cada ponente es un bloque con sentido propio. Las secciones de index y conducta solo dividen temas.
- ```<ol>``` para “Cómo reportar” y ```<ul>``` para las demás listas. Los pasos del reporte son opciones numeradas, mientras que “lo que esperamos” no tiene orden.
- ```<dl>``` y ```<time datetime>``` para los datos del evento. Fecha, hora, lugar y entrada son pares término–valor, y datetime deja la fecha en un formato que una máquina entiend
- Investiga

- ¿Qué aparece después del ?? Los datos del formulario como pares nombre=valor separados por &. Con GET quedaría algo así:

gracias.html?nombre=Mar%C3%ADa+Jos%C3%A9+P%C3%A9rez&email=maria%40correo.com&celu=3001234567&ciudad=medellin&momento_profesional=empezando&web=on&python=on&cupo=on&talla=m&aprender=Quiero+aprender+a+programar&cond=on

- ¿Cómo se ven los espacios, las tildes y la arroba?

Los espacios se convierten en +. En otras partes de una URL se escriben %20.
Las tildes y la ñ pasan a %C3%AD (í), %C3%A9 (é) y %C3%B1 (ñ). Son los bytes UTF-8 del carácter en hexadecimal.
La arroba pasa a %40.
Esto se llama codificación porcentual, y existe porque la URL solo admite ciertos caracteres. Según el navegador, la barra puede mostrarlo codificado o ya decodificado.

- ¿Qué pasa con los campos que no llenaste?

Un campo de texto vacío viaja igual, con el valor vacío (por ejemplo aprender=).
Los checkbox sin marcar y los radio sin elegir no aparecen en la URL.
Los checkbox marcados viajan como web=on, porque no tienen atributo value.
Los select siempre envían algo, porque la primera opción queda elegida por defecto (medellin, xs).
Un campo sin atributo name no se envía nunca.

- ¿Por qué un formulario con contraseñas nunca debería usar method="get"? Con GET los datos van en la URL, y la URL queda en muchos lugares:

en la barra de direcciones, a la vista de quien esté mirando la pantalla;
en el historial y los marcadores del navegador;
en los registros (logs) del servidor y de cualquier proxy;
en el encabezado Referer que se envía a otros sitios cuando se hace clic en un enlace.

Con method="post" los datos viajan en el cuerpo de la petición y no quedan en la URL ni en el historial. POST tampoco cifra nada: para proteger una contraseña además se necesita HTTPS.



## Lo que aprendí

- Lo que aprendí

Cada etiqueta HTML tiene un significado, no solo una apariencia. Elegir table, dl, article u ol según lo que el contenido es hace la página más clara para lectores de pantalla y para buscadores.

Los atributos name y value deciden qué datos viajan en un formulario. Un campo sin name no se envía, y un checkbox sin value manda on.
Con method="get" los datos quedan visibles en la URL, y por eso GET sirve para búsquedas pero no para datos sensibles.
La validación nativa (required, type="email", pattern, maxlength) atrapa errores sin escribir JavaScript, aunque el servidor siempre debe volver a validar.
Los enlaces con ancla (#id) funcionan porque cada id es único en la página, y un id repetido rompe el enlace.

-Cosas del código que afectan tus respuestas
El botón “Reserva mi cupo” es type="button" dentro de un <"a">, así que el formulario no se envía: solo navega a gracias.html. Con el código actual, la barra de gracias.html no mostraría ningún ?. Para ver lo descrito arriba, el botón tendría que ser type="submit" y el action apuntar a gracias.html, ya que ahora apunta a procesar-inscripcion.

## Hecho por

Tu nombre · [GitHub](https://github.com/wiliend69)# Parche Dev 2026



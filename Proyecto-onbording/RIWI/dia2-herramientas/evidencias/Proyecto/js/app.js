// app.js — Laboratorio DevTools · Día 2
console.log("✅ app.js empezó a ejecutarse");
console.warn("⚠️ Advertencia de prueba: un warning no detiene la página, solo te avisa de algo.");

// 1) Contador de visitas (se guarda en el navegador con localStorage)
let visitas = Number(localStorage.getItem("visitas")) || 0;
visitas = visitas + 1;
localStorage.setItem("visitas", visitas);
document.querySelector("#visitas").textContent = visitas;

// 2) Botón de saludo
const nombreCoder = "Coder de Riwi";
const boton = document.querySelector("#boton-saludar");

boton.addEventListener("click", function () {
  const mensaje = document.querySelector("#mensaje");
  mensaje.textContent = "¡Hola, " + nombreCoder + "! Ya sabes depurar con DevTools 🚀";
});

console.log("🏁 app.js terminó de ejecutarse");
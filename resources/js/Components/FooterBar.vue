<template>
  <footer class="mt-16 border-t border-slate-200 bg-white/80">
    <div class="container mx-auto px-4 py-10 grid md:grid-cols-3 gap-10">
      <!-- COLUMNA 1 -->
      <div>
        <div class="flex items-center gap-2 mb-3">
          <div class="w-8 h-8 rounded-xl bg-[#0A66CC] shadow-md"></div>
          <span class="font-extrabold text-slate-800 text-lg">AmautaDev</span>
        </div>
        <p class="text-slate-600">
          Desarrollamos el futuro de tu marca con tecnología e innovación.
        </p>
      </div>

      <!-- COLUMNA 2 -->
      <div>
        <h4 class="font-bold mb-3 text-slate-800">Enlaces</h4>
        <ul class="space-y-2 text-slate-600">
          <li><a href="/servicios" class="hover:text-[#0A66CC]">Servicios</a></li>
          <li><a href="/portafolio" class="hover:text-[#0A66CC]">Portafolio</a></li>
          <li><a href="/contacto" class="hover:text-[#0A66CC]">Contacto</a></li>
        </ul>
      </div>

      <!-- COLUMNA 3 -->
      <div>
        <h4 class="font-bold mb-3 text-slate-800">Contáctanos</h4>
        <p class="text-slate-600">hola@amautadev.com</p>
        <a href="/contacto" class="btn-brand mt-4 inline-flex">Hablemos</a>
      </div>
    </div>

    <div class="text-center text-xs text-slate-500 pb-6">
      © {{ new Date().getFullYear() }} AmautaDev — Todos los derechos reservados.
    </div>
  </footer>
</template>

<style scoped>
.btn-brand {
  background-color: #0A66CC;
  color: white;
  font-weight: 600;
  padding: 0.5rem 1rem;
  border-radius: 0.75rem;
  transition: 0.2s;
}
.btn-brand:hover {
  background-color: #084DA0;
}
</style>

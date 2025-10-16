<template>
  <footer class="relative bg-gradient-to-b from-white to-[#F8FBFF] border-t border-slate-200 pt-14 pb-8">
    <div class="container mx-auto px-6 grid md:grid-cols-3 gap-10 items-start text-center md:text-left">
      
      <div>
        <div class="flex items-center justify-center md:justify-start gap-2 mb-3">
          <img src="/images/AmautaDev_logo.png" alt="AmautaDev" class="w-8 h-8">
          <span class="text-xl font-bold text-slate-800">AmautaDev</span>
        </div>
        <p class="text-slate-600 max-w-xs mx-auto md:mx-0">
          Desarrollamos el futuro de tu marca con tecnología e innovación.
        </p>
      </div>

      <div>
        <h3 class="font-semibold text-slate-900 mb-3">Enlaces</h3>
        <ul class="space-y-2 text-slate-600">
          <li><a href="/servicios" class="hover:text-[#0A66CC]">Servicios</a></li>
          <li><a href="/portafolio" class="hover:text-[#0A66CC]">Portafolio</a></li>
          <li><a href="/contacto" class="hover:text-[#0A66CC]">Contacto</a></li>
        </ul>
      </div>

      <div>
        <h3 class="font-semibold text-slate-900 mb-3">Contáctanos</h3>
        <a href="mailto:hola@amautadev.com" class="text-slate-600 block mb-4 hover:text-[#0A66CC]">
          hola@amautadev.com
        </a>
        <a
          href="/contacto"
          class="inline-block bg-[#0A66CC] text-white px-5 py-2.5 rounded-xl font-semibold hover:bg-[#084DA0] transition"
        >
          Hablemos
        </a>
        <div class="flex justify-center md:justify-start gap-4 mt-5 text-slate-500">
          <a href="#" class="hover:text-[#0A66CC] text-2xl"><i class="fa-brands fa-facebook"></i></a>
          <a href="#" class="hover:text-[#0A66CC] text-2xl"><i class="fa-brands fa-instagram"></i></a>
          <a href="#" class="hover:text-[#0A66CC] text-2xl"><i class="fa-brands fa-linkedin"></i></a>
          <a href="#" class="hover:text-[#0A66CC] text-2xl"><i class="fa-brands fa-github"></i></a>
        </div>
      </div>
    </div>

    <div class="mt-10 border-t border-slate-200 pt-6 text-center text-slate-500 text-sm">
      © 2025 <span class="font-semibold text-slate-700">AmautaDev</span> — Todos los derechos reservados.
    </div>
  </footer>
</template>

<style scoped>
footer {
  font-family: 'Inter', sans-serif;
}
</style>

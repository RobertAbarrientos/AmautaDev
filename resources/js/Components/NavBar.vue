<script setup>
import { ref } from 'vue'
const menuOpen = ref(false)
</script>

<template>
  <header class="sticky top-0 z-40 bg-white/80 backdrop-blur border-b border-slate-200">
    <nav class="container mx-auto h-16 flex items-center justify-between px-4">
      <!-- LOGO -->
      <a href="/" class="flex items-center gap-2">
        <img
          src="/images/AmautaDev_logo.png"
          alt="AmautaDev Logo"
          class="h-10 w-auto"
        />
        <span class="font-extrabold text-[#0A66CC] text-lg tracking-tight">
          AmautaDev
        </span>
      </a>

      <!-- MENÚ DESKTOP -->
      <ul class="hidden md:flex items-center gap-6 font-medium text-slate-700">
        <li><a href="/" class="hover:text-[#0A66CC] transition">Inicio</a></li>
        <li><a href="/servicios" class="hover:text-[#0A66CC] transition">Servicios</a></li>
        <li><a href="/portafolio" class="hover:text-[#0A66CC] transition">Portafolio</a></li>
        <li><a href="/contacto" class="hover:text-[#0A66CC] transition">Contacto</a></li>
        <li>
          <a href="/contacto" class="btn-brand shadow-md shadow-[#0A66CC]/30">
            Cotizar ahora
          </a>
        </li>
      </ul>

      <!-- BOTÓN MENÚ MÓVIL -->
      <button
        @click="menuOpen = !menuOpen"
        class="md:hidden p-2 rounded-lg border border-slate-300 text-slate-700 hover:text-[#0A66CC] transition"
        aria-label="Abrir menú"
      >
        <span v-if="!menuOpen">☰</span>
        <span v-else>✕</span>
      </button>
    </nav>

    <!-- MENÚ MÓVIL -->
    <transition name="slide-fade">
      <div
        v-if="menuOpen"
        class="md:hidden border-t border-slate-200 bg-white shadow-md"
      >
        <ul class="flex flex-col py-4 px-6 space-y-3 text-slate-700 font-medium">
          <li><a href="/" @click="menuOpen = false">Inicio</a></li>
          <li><a href="/servicios" @click="menuOpen = false">Servicios</a></li>
          <li><a href="/portafolio" @click="menuOpen = false">Portafolio</a></li>
          <li><a href="/contacto" @click="menuOpen = false">Contacto</a></li>
        </ul>
      </div>
    </transition>
  </header>
</template>

<style scoped>
.btn-brand {
  background-color: #0A66CC;
  color: white;
  font-weight: 600;
  padding: 0.5rem 1rem;
  border-radius: 0.75rem;
  transition: all 0.25s ease;
}
.btn-brand:hover {
  background-color: #084DA0;
  transform: translateY(-1px);
}

.slide-fade-enter-active,
.slide-fade-leave-active {
  transition: all 0.3s ease;
}
.slide-fade-enter-from,
.slide-fade-leave-to {
  opacity: 0;
  transform: translateY(-10px);
}
</style>

<template>
  <section
    class="relative overflow-hidden py-24 bg-gradient-to-br from-[#0A66CC]/10 via-white to-[#E0F2FF]/30"
  >
    <!-- ✨ Partículas de fondo -->
    <Particles
      id="tsparticles"
      :options="{
        background: { color: 'transparent' },
        fpsLimit: 60,
        particles: {
          number: { value: 45 },
          color: { value: ['#0A66CC', '#4F46E5', '#06B6D4'] },
          links: { enable: true, color: '#0A66CC', opacity: 0.25 },
          move: { enable: true, speed: 1 },
          size: { value: 2 },
          opacity: { value: 0.6 },
        },
        interactivity: {
          events: { onHover: { enable: true, mode: 'repulse' }, resize: true },
          modes: { repulse: { distance: 100, duration: 0.4 } },
        },
        detectRetina: true,
      }"
      class="absolute inset-0 z-0"
    />

    <!-- Gradiente ambiental -->
    <div
      class="absolute inset-0 bg-[radial-gradient(circle_at_20%_30%,#0A66CC20,transparent_60%),radial-gradient(circle_at_80%_70%,#60A5FA20,transparent_60%)] animate-pulse-slow"
    ></div>

    <!-- 📐 Contenedor principal centrado -->
    <div
      class="relative z-10 mx-auto max-w-7xl px-8 grid md:grid-cols-2 gap-12 items-center"
    >
      <!-- Texto -->
      <div class="text-center md:text-left md:pl-6 lg:pl-10">
        <h1
          class="text-4xl md:text-6xl font-extrabold text-slate-900 leading-tight drop-shadow-sm"
        >
          Desarrollo web, <span class="text-[#0A66CC]">ciberseguridad</span> y
          soluciones digitales
        </h1>
        <p class="mt-4 text-lg text-slate-600 leading-relaxed max-w-md mx-auto md:mx-0">
          Creamos tecnología que impulsa tu marca y protege tu negocio con innovación y diseño.
        </p>

        <div class="mt-8 flex flex-wrap justify-center md:justify-start gap-4">
          <a href="/contacto" class="btn-primary">Contáctanos</a>
          <a href="/portafolio" class="btn-outline">Ver portafolio</a>
        </div>
      </div>

      <!-- 🚀 Carrusel perfectamente centrado -->
      <div class="flex justify-center items-center md:justify-end">
        <swiper
          :modules="[Autoplay, EffectCoverflow]"
          :slides-per-view="1"
          :loop="true"
          :autoplay="{ delay: 2800, disableOnInteraction: false }"
          :effect="'coverflow'"
          :coverflow-effect="{ rotate: 0, stretch: 0, depth: 100, modifier: 1.5, slideShadows: false }"
          class="w-[22rem] sm:w-[24rem] flex justify-center"
        >
          <swiper-slide v-for="(img, i) in imagenes" :key="i">
            <div class="relative flex flex-col items-center justify-center">
              <img
                :src="img"
                class="w-80 h-80 object-contain drop-shadow-[0_20px_50px_rgba(10,102,204,0.25)] transition-transform duration-700 hover:scale-[1.05]"
                :alt="`Imagen ${i + 1}`"
              />
              <img
                :src="img"
                class="w-80 h-16 object-contain reflect-small mask-gradient-small"
                alt="reflejo"
              />
            </div>
          </swiper-slide>
        </swiper>
      </div>
    </div>
  </section>
</template>

<script setup>
import { Swiper, SwiperSlide } from 'swiper/vue'
import { Autoplay, EffectCoverflow } from 'swiper/modules'
import 'swiper/css'
import 'swiper/css/effect-coverflow'

const imagenes = [
  '/images/AmautaDev_logo.png',
  '/images/Ciber_seguridad.png',
  '/images/desarrollo_ios_And.png',
]
</script>

<style scoped>
.btn-primary {
  @apply bg-[#0A66CC] text-white font-semibold py-3 px-6 rounded-xl shadow-md hover:bg-[#084DA0] transition;
}
.btn-outline {
  @apply border border-[#0A66CC] text-[#0A66CC] font-semibold py-3 px-6 rounded-xl hover:bg-[#0A66CC] hover:text-white transition;
}

/* ✨ Animaciones */
@keyframes pulse-slow {
  0%, 100% { opacity: 1; transform: scale(1); }
  50% { opacity: 0.96; transform: scale(1.04); }
}
.animate-pulse-slow { animation: pulse-slow 10s ease-in-out infinite; }

/* 💫 Reflejo sutil */
.reflect-small {
  transform: scaleY(-1);
  height: 14%;
  opacity: 0.1;
  margin-top: -5px;
  filter: blur(0.8px);
  transform-origin: top;
}
.mask-gradient-small {
  mask-image: linear-gradient(to bottom, rgba(0,0,0,0.4) 10%, transparent 70%);
  -webkit-mask-image: linear-gradient(to bottom, rgba(0,0,0,0.4) 10%, transparent 70%);
}
</style>

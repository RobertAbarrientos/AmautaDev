<script setup>
const props = defineProps({
  title: { type: String, default: 'Título principal' },
  subtitle: { type: String, default: 'Subtítulo o descripción corta.' },
  ctaLabel: { type: String, default: 'Contáctanos' },
})
</script>

<template>
  <section class="section bg-gradient-to-b from-white to-blue-50">
    <div class="container grid md:grid-cols-2 gap-10 items-center">
      <!-- Texto -->
      <div>
        <h1 class="text-4xl md:text-6xl font-extrabold text-brand">
          {{ title }}
        </h1>
        <p class="text-lg md:text-xl text-slate-600 mt-4">
          {{ subtitle }}
        </p>
        <div class="mt-8 flex gap-4">
          <a href="/contacto" class="btn-brand">{{ ctaLabel }}</a>
          <a href="/portafolio" class="btn-ghost">Ver portafolio</a>
        </div>
      </div>

      <!-- Imagen o figura -->
      <div class="relative flex justify-center">
        <div
          class="aspect-[4/3] w-full md:w-4/5 bg-gradient-to-br from-brand to-accent rounded-3xl shadow-glow flex items-center justify-center"
        >
          <div
            class="text-white text-6xl font-black tracking-widest select-none"
          >
            A
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.section {
  padding-top: 6rem;
  padding-bottom: 6rem;
}
.container {
  max-width: 1280px;
  margin: 0 auto;
  padding: 0 1rem;
}
.text-brand {
  color: #0A66CC;
}
.btn-brand {
  background-color: #0A66CC;
  color: white;
  font-weight: 600;
  padding: 0.75rem 1.5rem;
  border-radius: 1rem;
  transition: 0.2s;
}
.btn-brand:hover {
  background-color: #084da0;
}
.btn-ghost {
  border: 1px solid #cbd5e1;
  color: #0A66CC;
  font-weight: 600;
  padding: 0.75rem 1.5rem;
  border-radius: 1rem;
  transition: 0.2s;
}
.btn-ghost:hover {
  background-color: #f1f5f9;
}
</style>

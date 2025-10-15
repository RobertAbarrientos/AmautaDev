<script setup>
const props = defineProps({
  icon: { type: String, default: '⚙️' },
  title: { type: String, default: 'Título' },
  text: { type: String, default: 'Descripción del beneficio o característica.' },
})
</script>

<template>
  <div class="card p-8 text-center hover:shadow-lg transition-all duration-300">
    <div class="text-4xl mb-4 select-none">{{ icon }}</div>
    <h3 class="text-xl font-bold text-slate-800 mb-2">{{ title }}</h3>
    <p class="text-slate-600 text-base leading-relaxed">{{ text }}</p>
  </div>
</template>

<style scoped>
.card {
  background-color: white;
  border-radius: 1.5rem;
  border: 1px solid #e2e8f0;
  transition: 0.3s;
}
.card:hover {
  transform: translateY(-4px);
  box-shadow: 0 10px 25px -5px rgba(10, 102, 204, 0.2);
}
</style>

<script setup>
defineProps({
  icon: String,
  title: String,
  description: String,
  gradient: String
})
</script>

<template>
  <article
    class="group bg-white/80 backdrop-blur-sm p-10 rounded-3xl shadow-md hover:shadow-2xl 
           transition-all duration-300 hover:-translate-y-3 border border-slate-100 
           hover:border-[#0A66CC]/30 hover:bg-white/90"
  >
    <div
      class="mx-auto mb-6 flex items-center justify-center w-20 h-20 rounded-full 
             text-white text-4xl shadow-lg group-hover:scale-110 transition-transform"
      :class="`bg-gradient-to-tr ${gradient}`"
    >
      {{ icon }}
    </div>

    <h3 class="text-2xl font-bold text-slate-800 mb-3">{{ title }}</h3>
    <p class="text-slate-600 leading-relaxed">{{ description }}</p>
  </article>
</template>

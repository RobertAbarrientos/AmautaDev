<script setup>
import { Motion } from '@oku-ui/motion'
import { usePage } from '@inertiajs/vue3'
import NavBar from '../Components/NavBar.vue'
import FooterBar from '../Components/FooterBar.vue'

const page = usePage()
</script>

<template>
  <div class="flex flex-col min-h-screen bg-white text-slate-900">
    <NavBar />

    <Motion
      :key="page.url"
      :initial="{ opacity: 0, y: 20 }"
      :animate="{ opacity: 1, y: 0 }"
      :exit="{ opacity: 0, y: -20 }"
      :transition="{ duration: 0.6, ease: 'easeOut' }"
      class="flex-grow"
    >
      <slot />
    </Motion>

    <FooterBar />
  </div>
</template>

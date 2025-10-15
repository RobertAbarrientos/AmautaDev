<script setup>
import AppLayout from '../Layouts/AppLayout.vue'
import Hero from '../Components/Hero.vue'
import FeatureCard from '../Components/FeatureCard.vue'
import TeamSection from '../Components/TeamSection.vue'
import { Motion } from '@oku-ui/motion'
</script>

<template>
  <AppLayout>
    <Motion
      :initial="{ opacity: 0, y: 40 }"
      :animate="{ opacity: 1, y: 0 }"
      :transition="{ duration: 0.8, ease: 'easeOut' }"
      class="min-h-screen"
    >
      <Hero
        title="Desarrollo web, ciberseguridad y soluciones digitales"
        subtitle="Creamos tecnología que impulsa tu marca y protege tu negocio."
        ctablabel="Contáctanos"
      />

      <section class="section bg-slate-50 py-20">
        <div class="container mx-auto px-6 text-center">
          <h2 class="text-3xl font-bold text-slate-800 mb-6">Lo que hacemos</h2>
          <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
            <FeatureCard icon="⚡" title="Ciberseguridad" text="Protegemos tus sistemas y datos." />
            <FeatureCard icon="💻" title="Desarrollo Web" text="Creamos sitios modernos y rápidos." />
            <FeatureCard icon="📱" title="Apps Móviles" text="Diseñamos experiencias móviles increíbles." />
          </div>
        </div>
      </section>

      <TeamSection />
    </Motion>
  </AppLayout>
</template>

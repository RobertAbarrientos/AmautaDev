<script setup>
import AppLayout from '../Layouts/AppLayout.vue'
import Hero from '../Components/Hero.vue'
import FeatureCard from '../Components/FeatureCard.vue'

const features = [
  {
    icon: "🔒",
    title: "Ciberseguridad",
    description: "Protegemos tus sistemas y datos frente a amenazas con soluciones robustas, cifradas y escalables.",
    gradient: "from-[#0A66CC] via-[#06B6D4] to-[#67E8F9]"
  },
  {
    icon: "💻",
    title: "Desarrollo Web",
    description: "Creamos experiencias digitales futuristas, veloces y optimizadas que elevan tu presencia online.",
    gradient: "from-[#0A66CC] via-[#3B82F6] to-[#9333EA]"
  },
  {
    icon: "📱",
    title: "Apps Móviles",
    description: "Diseñamos interfaces móviles elegantes, intuitivas y conectadas al ecosistema de tu negocio.",
    gradient: "from-[#0A66CC] via-[#6366F1] to-[#EC4899]"
  }
]
</script>

<template>
  <AppLayout>
    <Hero />

    <section class="relative py-28 bg-gradient-to-b from-[#F8FBFF] to-white overflow-hidden">
      <!-- Glow futurista de fondo -->
      <div class="absolute inset-0 blur-3xl bg-gradient-to-tr from-[#0A66CC]/20 via-[#06B6D4]/20 to-transparent animate-pulse"></div>

      <div class="container mx-auto px-6 text-center relative z-10">
        <!-- Título principal -->
        <h2 class="text-5xl sm:text-6xl font-extrabold text-slate-900 tracking-tight drop-shadow-lg">
          <span class="bg-gradient-to-r from-[#0A66CC] via-[#06B6D4] to-[#4F46E5] bg-clip-text text-transparent">
            Lo que hacemos
          </span>
        </h2>

        <!-- Subtítulo -->
        <p class="mt-5 text-slate-600 text-lg sm:text-xl max-w-2xl mx-auto leading-relaxed animate-fadeIn">
          Impulsamos tu marca con soluciones tecnológicas innovadoras, seguras y escalables.
        </p>

        <!-- Tarjetas -->
        <div
          class="mt-16 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-10 max-w-6xl mx-auto animate-slideUp"
        >
          <FeatureCard
            v-for="(feature, i) in features"
            :key="i"
            :icon="feature.icon"
            :title="feature.title"
            :description="feature.description"
            :gradient="feature.gradient"
            class="transform hover:scale-[1.05] transition-all duration-500 ease-out hover:shadow-2xl hover:shadow-[#0A66CC]/30"
          />
        </div>
      </div>

      <!-- Capa inferior con degradado translúcido -->
      <div class="absolute inset-0 bg-gradient-to-b from-transparent via-white/40 to-[#EAF3FF]/80 backdrop-blur-[2px]"></div>
    </section>
  </AppLayout>
</template>

<style scoped>
@keyframes fadeIn {
  0% { opacity: 0; transform: translateY(15px); }
  100% { opacity: 1; transform: translateY(0); }
}

@keyframes slideUp {
  0% { opacity: 0; transform: translateY(30px); }
  100% { opacity: 1; transform: translateY(0); }
}

.animate-fadeIn {
  animation: fadeIn 1.2s ease-out forwards;
}

.animate-slideUp {
  animation: slideUp 1.4s ease-out forwards;
}
</style>

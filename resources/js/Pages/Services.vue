<script setup>
import AppLayout from '../Layouts/AppLayout.vue'
import FeatureCard from '../Components/FeatureCard.vue'

const services = [
  {
    icon: "🧠",
    title: "Inteligencia Artificial",
    description: "Automatizamos tus procesos con IA, análisis predictivo y modelos personalizados que mejoran la eficiencia operativa.",
    gradient: "from-[#0A66CC] to-[#06B6D4]"
  },
  {
    icon: "🛒",
    title: "E-Commerce",
    description: "Diseñamos tiendas online seguras, optimizadas y escalables con integración total de pagos y facturación electrónica.",
    gradient: "from-[#0A66CC] to-[#60A5FA]"
  },
  {
    icon: "☁️",
    title: "Infraestructura Cloud",
    description: "Migramos y gestionamos tus servicios en la nube con alta disponibilidad, seguridad y rendimiento asegurado.",
    gradient: "from-[#0A66CC] to-[#4F46E5]"
  },
  {
    icon: "⚙️",
    title: "Integraciones API",
    description: "Conectamos tus sistemas con bancos, SUNAT y servicios externos mediante APIs seguras y escalables.",
    gradient: "from-[#06B6D4] to-[#0A66CC]"
  },
  {
    icon: "📊",
    title: "Analítica Avanzada",
    description: "Convierte tus datos en decisiones inteligentes con dashboards dinámicos y reportes automatizados.",
    gradient: "from-[#60A5FA] to-[#0A66CC]"
  },
  {
    icon: "🔐",
    title: "Ciberseguridad",
    description: "Protegemos tus activos digitales mediante monitoreo constante, auditorías y estrategias de defensa activa.",
    gradient: "from-[#0A66CC] to-[#06B6D4]"
  },
]
</script>

<template>
  <AppLayout>
    <section class="relative py-28 bg-gradient-to-b from-[#F8FBFF] to-white overflow-hidden">
      <!-- Glow de fondo -->
      <div class="absolute -top-40 left-1/2 -translate-x-1/2 w-[800px] h-[800px] bg-[#0A66CC]/10 blur-[130px] rounded-full"></div>

      <div class="container mx-auto px-6 text-center relative z-10">
        <h1
          class="fade-on-scroll text-5xl md:text-6xl font-extrabold text-slate-900 tracking-tight mb-6
                 relative inline-block after:content-[''] after:block after:h-[4px] after:w-28 after:mx-auto after:mt-4
                 after:bg-gradient-to-r after:from-[#0A66CC] after:to-[#06B6D4] after:rounded-full">
          Nuestros Servicios
        </h1>

        <p class="fade-on-scroll text-slate-600 text-lg md:text-xl mt-4 max-w-3xl mx-auto leading-relaxed">
          En <span class="text-[#0A66CC] font-semibold">AmautaDev</span> desarrollamos soluciones tecnológicas que potencian tu negocio con innovación, seguridad y rendimiento.
        </p>

        <!-- Tarjetas -->
        <div class="mt-20 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-10 max-w-6xl mx-auto">
          <FeatureCard
            v-for="(service, i) in services"
            :key="i"
            :icon="service.icon"
            :title="service.title"
            :description="service.description"
            :gradient="service.gradient"
            class="fade-on-scroll"
          />
        </div>
      </div>

      <!-- Gradiente inferior -->
      <div class="absolute inset-0 bg-gradient-to-b from-transparent to-[#EAF3FF]/70"></div>
    </section>
  </AppLayout>
</template>

<style scoped>
@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(50px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.fade-on-scroll {
  opacity: 0;
  transition: opacity 0.6s ease, transform 0.6s ease;
}

.animate-fadeInUp {
  animation: fadeInUp 0.8s ease-out forwards;
}
</style>
